# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provision "shell", path: "dist/scripts/apt-install.sh"
  config.vm.provision "shell", path: "dist/scripts/nginx-config.sh"

  config.vm.hostname = "vagrant.loc"
  config.hostsupdater.aliases = [
    "phpmyadmin.loc"
  ]

end
