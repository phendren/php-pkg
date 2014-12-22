# php-pkg attributes - taken from default opsworks PHP packages
# phendren

packages = []

packages = [
    'php-xml',
    'php-common',
    'php-xmlrpc',
    'php-devel',
    'php-gd',
    'php-cli',
    'php-pear-Auth-SASL',
    'php-mysql',
    'php-mcrypt',
    'php-pecl-memcache',
    'php-pecl-igbinary',
    'php-pecl-redis',
    'php-pecl-oauth',
    'php-soap',
    'php-pear',
    'php-pear-XML-Parser',
    'php-pear-Mail-Mime',
    'php-pear-DB',
    'php-pear-HTML-Common'
  ]

default[:phppkg][:packages] = packages

# php-pkg PHP.ini attribute settings
# modify these to change configurations in the PHP.ini template

default[:phppkg][:timezone] = 'America/Denver'
default[:phppkg][:shorttag] = 'Off'
default[:phppkg][:disfunctions] = 'passthru,system'
default[:phppkg][:maxexectime] = 60
default[:phppkg][:maxinputtime] = 60
default[:phppkg][:inputvars] = 1000
default[:phppkg][:memorylimit] = '256M'
default[:phppkg][:errorreport] = 'E_ALL & ~E_DEPRECATED'
default[:phppkg][:errordisplay] = 'Off'
default[:phppkg][:maxpost] = '32M'
default[:phppkg][:maxfilesize] = '16M'
default[:phppkg][:maxfileuploads] = 50
default[:phppkg][:socktimeout] = 60
default[:phppkg][:mysqltimeout] = 60
