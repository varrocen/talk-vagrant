Vagrant.configure(2) do |config|
  # Machine Settings
  config.vm.box = "bento/ubuntu-18.04"
  # Private Networks
  config.vm.network :forwarded_port, guest: 80, host: 8080
  # Provisioning
  config.vm.provision :shell, path: "bootstrap.sh"
end
