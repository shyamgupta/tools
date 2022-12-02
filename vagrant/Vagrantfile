# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/stream8"

  # Do not generate a new SSH key for each VM
  config.ssh.insert_key = false
  
  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.cpus = 1
    v.linked_clone = true
  end
  
    # Define three VMs with static private IP addresses.
  boxes = [
    { :name => "ansible-1", :ip => "192.168.33.71" },
    { :name => "node1", :ip => "192.168.33.72" },
    { :name => "node2", :ip => "192.168.33.73" }
  ]

  # Install ansible & dependencies
  $script = <<-'SCRIPT'
    dnf -y update
    dnf -y install python3 python3-pip podman ansible-core
  SCRIPT

  # Install ansible-navigator
  $script2 = <<-'SCRIPT'
    python3 -m pip install ansible-navigator --user
  SCRIPT

  # Provision each of the VMs.
  boxes.each do |bx|
    config.vm.define bx[:name] do |config|
      config.vm.hostname = bx[:name]
      config.vm.network :private_network, ip: bx[:ip]

      # Copy SSH key to primary node and run scripts
      if bx[:name] == "ansible-1"
        config.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "~/.ssh/id_rsa"
        config.vm.provision :shell, inline: "chmod 600 ~/.ssh/id_rsa", privileged: false
        config.vm.provision :shell, inline: $script, privileged: true

        config.vm.provision "file", source: "./.ansible-navigator.yml", destination: "~/.ansible-navigator.yml"
        config.vm.provision :shell, inline: $script2, privileged: false

        config.vm.provision "file", source: "./hosts", destination: "~/hosts"
      end
    end
  end
end