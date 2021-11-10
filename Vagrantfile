# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  # Box Settings
  config.vm.box = "gusztavvargadr/ubuntu-desktop"

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  # Network Settings
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # Folder Settings
  config.vm.synced_folder ".", "/sync_folder"

  # Provision Settings
  config.vm.provision :shell, :path => "install.sh"
end
