# vagrant-tfswitch

## Description
VM with tfswitch configured

tfswitch provides you opportunity to change your terraform versions.
```
gberchev@pc-split24-hp tfswitch $ vagrant ssh
Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.4.0-151-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage
vagrant@xenial64:~$ 
vagrant@xenial64:~$ 
vagrant@xenial64:~$ 
vagrant@xenial64:~$ 
vagrant@xenial64:~$ cdtfswitch 
2019/06/26 06:08:30 Creating directory for terraform: /home/vagrant/.terraform.versions/
✔ 0.11.14
Downloading https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip to terraform_0.11.14_linux_amd64.zip
Downloading ...
12569267 bytes downloaded.
Switched terraform to version "0.11.14" 
vagrant@xenial64:~$ terraform version
Terraform v0.11.14

Your version of Terraform is out of date! The latest version
is 0.12.3. You can update by downloading from www.terraform.io/downloads.html
vagrant@xenial64:~$ 
```

For more information check the source: https://github.com/warrensbox/terraform-switcher

## How to use
- clone this repo
- `vagrant up`
- `cdtfswitch`
- choose terraform version you want to use

