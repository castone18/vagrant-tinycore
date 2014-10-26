vagrant-tinycore
================

A tinycore Linux box for Vagrant.

##Usage on Windows
You will need to install vagrant 1.6.5 or greater installed, and virtualbox.
Add vagrant to your path so that you can run vagrant commands from a command
prompt. Then start a command prompt and do the following:
```
vagrant box add --name tinycore tinycore.box
vagrant up
```

##Usage on Linux
You will need to install vagrant 1.6.5 or greater and libvirt. From a command
prompt, do the following (instructions for ubuntu):
```
sudo apt-get install libxslt-dev libxml2-dev libvirt-dev
vagrant plugin install vagrant-libvirt
vagrant plugin install vagrant-mutate
vagrant box add --name tinycore tinycore.box
vagrant mutate tinycore libvirt
vagrant up --provider libvirt
```
