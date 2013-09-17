# Deploying Apache VCL using Ansible #

This Ansible playbook will deploy Apache VCL, hopefully by following Ansible's best practices.

Note that a multihost configuration isn't tested yet, but this playbook is setup to support that at some point.

## To use this playbook ##

1. Copy `group_vars/example_all` to `group_vars/all` and edit as required, entering passwords, hostnames, domains, etc.
2. Create an intentory file.

    [web]
    vcl-test.example.com

    [management-node]
    vcl-test.example.com

    [database]
    vcl-test.example.com
