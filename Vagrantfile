Vagrant.configure(2) do |config|
  config.vm.box = "rodrigosaito/dev"

  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.provider "virtualbox" do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.synced_folder "/Users/rodrigosaito/dev", "/home/vagrant/dev", type: "nfs"
  config.vm.synced_folder "/Users/rodrigosaito/moip", "/home/vagrant/moip", type: "nfs"
  config.vm.synced_folder "/Users/rodrigosaito/.m2", "/home/vagrant/.m2", type: "nfs"
  config.vm.synced_folder "/Users/rodrigosaito/.ssh", "/home/vagrant/ssh", type: "nfs"

  config.vm.network "forwarded_port", guest: 1515, host: 1515
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  config.vm.network "forwarded_port", guest: 5672, host: 5672
  config.vm.network "forwarded_port", guest: 6379, host: 6379
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 15672, host: 15672
  config.vm.network "forwarded_port", guest: 27017, host: 27017
end
