Vagrant.configure("2") do |config|

  config.vm.box = "bento/centos-6"

  config.vm.synced_folder ".","/app/saltstack/"

  config.vm.provision :salt do |salt|
    salt.bootstrap_script = './vagrant-salt/bootstrap-salt.sh'
    salt.verbose = true
    salt.minion_config = './vagrant-salt/minion_config'
    salt.run_highstate = true
    salt.colorize = true
  end
end
