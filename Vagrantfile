# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The '2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = 'CentOS-6.5'
  config.vm.box_url = 'https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box'

  config.vm.network :forwarded_port, host: 8084, guest: 80
  config.vm.network :forwarded_port, host: 8080, guest: 8080

  config.vm.provider :virtualbox do |vb|
    vb.memory = '4096'
    vb.cpus = '4'
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['.', '~/src']
    chef.provisioning_path = '/tmp/vagrant-chef'

    chef.add_recipe('python::default')
    chef.add_recipe('java::default')
    chef.add_recipe('git::default')
    chef.add_recipe('maven::default')
    chef.add_recipe('ruby::default')
    chef.add_recipe('rubygems::default')
    chef.add_recipe('chef-jenkin-plugins:default')

    chef.json = {
      'iptables' => { 'install_rules' => false },
      'python' => { 'version' => '3.5' },
      'java' => {
        'jdk_version' => "8",
        'install_flavor' => "oracle",
        'oracle' => {
          'accept_oracle_download_terms' => true
        }
      }
    }
  end
end
