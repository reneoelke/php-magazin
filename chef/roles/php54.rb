name "php54"
description "Role for installing a PHP 5.4 runtime environment."

default_attributes({
  "nginx" => {
    "default_site_enabled" => false
  }
})

override_attributes({
})

run_list(
  "recipe[apt]",
  "recipe[php::package_php54]",
  "recipe[php::fpm]",
  "recipe[nginx]",  
  "recipe[php-magazin]",
  "recipe[php-magazin::nginx]"
)
