# Deploying Apache VCL using Ansible #

This Ansible playbook will deploy Apache VCL, hopefully by following Ansible's best practices.

Note that a multihost configuration isn't tested yet, but this playbook is setup to support that at some point.

## Requirements

* Ansible 1.6+ which has the cpanm module

## To use this playbook ##

* Copy `group_vars/example_all` to `group_vars/all` and edit as required, entering passwords, hostnames, domains, etc.
* Create an inventory file. NOTE: Again, this is a single host install, but with hopes of making it multi-host soon.

```
# file: inventory_file
[web]
vcl-test.example.com

[management-node]
vcl-test.example.com

[database]
vcl-test.example.com
```

* Run the playbook.

```
$ pip install ansible # if you don't have ansible
$ ansible-playbook -i inventory_file site.yml # ...and watch as the output rolls by...
```

Afterwards you should be able to access the website that you configured in the variables file.

Note that there will still be a lot of database configuration to do via the webgui.

## To deploy the Cybera "fork" of Apache VCL

At this time Apache VCL does not officially support NAT or OpenStack, but Cybera does have a small "fork" of Apache VCL that does. If you would like to install that version of Apache VCL, then change:

```bash
version: normal
```

to 

```bash
version: cybera
```

in group_vars/all.
