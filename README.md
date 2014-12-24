php-pkg Cookbook
================

php-pkg is a Chef Cookbook meant to be a straightforward and highly configurable option for installing PHP and any associated php module packages on Amazon Linux instances. I wrote it specifically for building custom layers in AWS OpsWorks (a DevOps friendly Application Management tool provided free as part of AWS: http://aws.amazon.com/opsworks/) but since this cookbook was written for Chef 11.4 - it's usefulness should extend beyond this specific use case.

Dependency: amzapache<br>
http://github.com/phendren/amzapache

It was also meant to be used in conjunction with Deployer - which is a Chef cookbook for deploying web applications directly from Github - deployer cookbook: http://github.com/phendren/deployer<br>

The combination of amzapache, php-pkg, and deployer can be used to create a custom layer within an OpsWorks application stack for unlimited potential uses.<br>

Requirements
------------
dependency amzapache::default - https://github.com/phendren/amzapache

I have only personally tested this cookbook with Amazon Linux but it should be useful with other RPM based Linux flavors.
Chef Solo 11.4 - AWS Linux

Attributes
----------
<b>php-pkg attributes</b> -please notice that the attribute names below do not match the same as the cookbook name (attributes have hyphen removed).<br>

To adjust which packages will be installed with PHP there is a `packages[]` hash containing a list of PHP RPM packages which should be included with the installation of PHP itself<br>

The attributes below are used for the configuration of the included cookbook php.ini template<br>

`default[:phppkg][:timezone]` - Timezone configuration default: America/Denver<br>
`default[:phppkg][:shorttag]` - PHP short tags enabled default: Off<br>
`default[:phppkg][:disfunctions]`- Disabled PHP functions default: passthru,system<br>
`default[:phppkg][:maxexectime]` - max execution time default: 60<br>
`default[:phppkg][:maxinputtime]` - Max input time default: 60<br>
`default[:phppkg][:inputvars]` - Input variables default: 1000<br>
`default[:phppkg][:memorylimit]` - Memory limit for PHP process default: 256M<br>
`default[:phppkg][:errorreport]` - Error reporting configuration default: E_ALL & ~E_DEPRECATED<br>
`default[:phppkg][:errordisplay]` - Error display default: off<br>
`default[:phppkg][:maxpost]` - Max post size default: 32M<br>
`default[:phppkg][:maxfilesize]` - Max PHP filesize default: 16M<br>
`default[:phppkg][:maxfileuploads]` - Max file uploads default:50<br>
`default[:phppkg][:socktimeout]` - PHP socket timeout default: 60<br>
`default[:phppkg][:mysqltimeout]` - MySQL timeout setting default: 60<br>


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
questions/help you can email: gocodeyourself[at]gmail.com

