#
# Cookbook Name:: php-pkg
# Recipe:: default
#
# Apache 2.0 License
#
# gocodeyourself@gmail.com - phendren - 2014
#
# Simple warning - created for AMZ Linux
if !platform_family?("amazon", "rhel")
  Chef::Log.warn("WARN: The php-pkg cookbook was written for use on Amazon Linux as part of AWS OpsWorks specifically")
end

include_recipe 'amzapache'

package 'php' do
    action :install
    not_if 'which php'
  end
  
  node[:phppkg][:packages].each do |pkg|
package pkg do
action :install
ignore_failure(pkg.to_s.match(/^php-pear-/) ? true : false) # some pear packages come from EPEL which is not always available
end
end

template 'php.ini' do
  path "/etc/php.ini"
  source 'php.ini.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

service "httpd" do
action :restart
end
