name "php55"
description "Role for installing a PHP 5.5 runtime environment."

default_attributes({
  "php" => {
    "source_php55" => {
      "version" => "5.5.0alpha6"
    }
  },
  "nginx" => {
  	"default_site_enabled" => false
  }
})

override_attributes({
})

run_list(
  "recipe[apt]",
  "recipe[build-essential]",
  "recipe[php::source_php55]",
  "recipe[nginx]",
  "recipe[php-magazin]",
  "recipe[php-magazin::php55]",
  "recipe[php-magazin::nginx]"
)
