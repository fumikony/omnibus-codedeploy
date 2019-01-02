# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.5"

  config.vm.provision "shell", inline: <<-SHELL
    sudo yum install -y epel-release
    sudo yum install -y git tig bash-completion byobu emacs-nox
  SHELL
end
