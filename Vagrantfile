# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.5"

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "provision"
  end

  # https://www.ruby-lang.org/ja/documentation/installation/#building-from-source
  # config.vm.provision "shell", inline: <<-'SHELL'
  #   set -e
  #   cd /tmp
  #   wget https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.0.tar.gz
  #   tar xzf ruby-2.6.0.tar.gz
  #   cd ruby-2.6.0
  #   ./configure
  #   make
  #   sudo make install
  # SHELL

  # https://qiita.com/silverskyvicto/items/c4ce4552a030c2205fd2
  config.vm.provision "shell", inline: <<-'SHELL'
    set -e
    cd /tmp
    # wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.20.1.tar.gz
    # tar xzf git-2.20.1.tar.gz
    cd git-2.20.1
    make configure
    ./configure --prefix=/usr/local
    make all
    sudo make install
  SHELL

end
