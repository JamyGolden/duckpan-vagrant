# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Change this to the name of your Vagrant base box.

  config.vm.box = "base-ubuntu-lucid"

  # Change this to a URL from which the base box can be downloaded, if you like.

  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # 'duckpan server' runs a development server on port 5000, so this forwards
  # that port to make it accessible.

  config.vm.network :forwarded_port, guest: 5000, host: 5000

  # I like to have the virtual machine's window available, but you can comment
  # this out if you don't want it.

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
  end

  # Enable provisioning with chef solo, using the included cookbooks.  The
  # duckpan::default recipe sets up some dependencies and calls the included
  # duckpan.sh shell script.

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = './cookbooks'
    chef.add_recipe 'duckpan'
  end

end
