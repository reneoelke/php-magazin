# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # VM for PHP 5.4
  config.vm.define :php54 do |config_php54|
    config_php54.vm.box = "precise64"
    config_php54.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config_php54.vm.host_name = "php54"
    config_php54.vm.forward_port 80, 8054

    config_php54.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "chef/cookbooks"
      chef.roles_path = "chef/roles"
      chef.add_role "php54"
    end
  end

  # VM for PHP 5.5
  config.vm.define :php55 do |config_php55|
    config_php55.vm.box = "precise64"
    config_php55.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
    config_php55.vm.host_name = "php55"
    config_php55.vm.forward_port 80, 8055

    config_php55.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "chef/cookbooks"
      chef.roles_path = "chef/roles"
      chef.add_role "php55"
    end
  end
end
