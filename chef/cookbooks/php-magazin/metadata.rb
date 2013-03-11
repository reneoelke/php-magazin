maintainer       "foobugs Oelke & Eichner GbR"
maintainer_email "rene.oelke@foobugs.com"
license          "Apache 2.0"
description      "Installs and configures all aspects for PHP Magazin project."
version          "1.0.0"

recipe            "php-magazin", "Common installation and configuration"
recipe            "php-magazin::php55", "Installation and configuration for PHP 5.5"

%w{ ubuntu }.each do |os|
  supports os
end
