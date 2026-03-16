Vagrant.configure("2") do |config|
  config.vm.box = "almalinux/9"
  config.vm.provision "shell", path: "./config/init.sh"

  config.vm.define "server" do |server|
    server.vm.hostname = "server"
    server.vm.network "private_network", ip: "192.168.33.101"
  end

end
