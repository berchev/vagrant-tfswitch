#!/usr/bin/env bash

# Add tfswitch to /usr/local/bin 
[ -f /usr/local/bin/tfswitch ] || {
  cp /vagrant/bin/tfswitch /usr/local/bin
}

# Create terraform directory if not created
[ -d /terraform ] || {
  mkdir /terraform
  chmod 777 /terraform
}

# Add /terraform path to your $PATH
grep '/terraform' /home/vagrant/.bash_profile || {
  echo 'export PATH=$PATH:/terraform' | sudo tee -a /home/vagrant/.bash_profile
}

# add alias tfswitch
grep "cdtfswitch" /home/vagrant/.bashrc || {
  echo "alias cdtfswitch='tfswitch -b /terraform/terraform'" | sudo tee -a /home/vagrant/.bashrc
}

# Make alias changes available
grep 'exec $SHELL' /home/vagrant/.bash_profile || {
  echo 'exec $SHELL' | tee -a /home/vagrant/.bash_profile 
}
