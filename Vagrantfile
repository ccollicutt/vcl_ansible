VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos64-puppet"

  config.vm.provider "virtualbox" do |v|
    v.name = "vcl"
  end

  config.vm.network :private_network, ip: "192.168.50.4"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
    ansible.host_key_checking = false
    ansible.inventory_path = "hosts"
  end

end