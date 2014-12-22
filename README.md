php-pkg Cookbook
================

php-pkg Cookbook installs PHP and associated php module packages on Amazon Linux instances. 

See attributes file for adding/customizing the php packages that will be installed. This cookbook was written to be used with amzapache - a custom apache/mod_ssl installation cookbook.

Requirements
------------
amzapache::default - https://github.com/phendren/amzapache

I have only tested it with Amazon Linux and I created it for use with AWS OpsWorks for building a custom layer.
Tested with Chef 11.4

AWS OpsWorks: http://aws.amazon.com/opsworks/

Attributes
----------
php-pkg attributes - note that the attribute name below does not match the same as the cookbook name (hyphen removed)
packages - hash of PHP RPM packages which should be included with the installation of PHP itself
The attributes below are used for the configuration of the included php.ini template

`default[:phppkg][:timezone]` - Timezone configuration default: America/Denver
`default[:phppkg][:shorttag]` - PHP short tags enabled default: Off
`default[:phppkg][:disfunctions]`- Disabled PHP functions default: passthru,system
`default[:phppkg][:maxexectime]` - max execution time default: 60
`default[:phppkg][:maxinputtime]` - Max input time default: 60
`default[:phppkg][:inputvars]` - Input variables default: 1000
`default[:phppkg][:memorylimit]` - Memory limit for PHP process default: 256M
`default[:phppkg][:errorreport]` - Error reporting configuration default: E_ALL & ~E_DEPRECATED
`default[:phppkg][:errordisplay]` - Error display default: off
`default[:phppkg][:maxpost]` - Max post size default: 32M
`default[:phppkg][:maxfilesize]` - Max PHP filesize default: 16M
`default[:phppkg][:maxfileuploads]` - Max file uploads default:50
`default[:phppkg][:socktimeout]` - PHP socket timeout default: 60
`default[:phppkg][:mysqltimeout]` - MySQL timeout setting default: 60


This cookbook was created for building a custom supporting Apache/PHP layer as part of an AWS OpsWork stack.

Usage
-----
#### php-pkg::default
Installs PHP using the settings as configured in the attributes. This cookbooks is setup to function as a dependency of 
amzapache (installs/configure Apache) and deployer (which can be used to easily deploy applications from github).

To use with OpsWorks - Create a custom layer - add php-pkg::default as a custom cookbook to the "setup" event.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Apache 2.0 License - written by Phil Hendren - github: phendren
gocodeyourself[at]gmail.com


