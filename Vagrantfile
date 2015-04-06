# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. 
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "centos-6.6-64-puppet"
  config.vm.box_url = "https://s3.amazonaws.com/platform-repo.ec2.nytimes.com/dev/shared/virtualbox/centos-6.6-x86_64-puppet-3.7.4-1.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "192.168.33.10"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
    v.cpus = 1
  end

  config.vm.provision :puppet do |puppet|
    puppet.module_path        = "puppet/modules"
    puppet.manifests_path     = "puppet/manifests"
    puppet.manifest_file      = "init.pp"
  end

end
