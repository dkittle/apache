# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "lcn/debian-wheezy-64"
    config.vm.hostname = "apache"

    config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 2
    end

    config.vm.network :private_network, ip: "192.168.1.16"
    config.vm.network :forwarded_port, guest: 80, host: 80 # Tomcat Server
    config.vm.network :forwarded_port, guest: 3306, host: 3306 # MySQL

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "./apache.yml"
    end

end
