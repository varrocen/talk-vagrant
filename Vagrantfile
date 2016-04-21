Vagrant.configure(2) do |config|
  # Machine Settings
  config.vm.box = "ubuntu/trusty64"
  # Private Networks
  config.vm.network :forwarded_port, guest: 80, host: 4567
  # Provisioning
  config.vm.provision :shell, path: "bootstrap.sh"
end
