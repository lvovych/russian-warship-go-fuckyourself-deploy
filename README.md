# Ansible project

## Prerequisites

- terraform
- ansible

## How to use

0. install terraform
1. install ansible

```sh
brew install terraform && brew install ansible
```

[SKIP] 2.Add all nessesary hosts into inventory.yml
[Not impl] 3.Update remote_user and ansible_user in ansible.cfg
4.Deploy

```sh
terraform apply && make deploy
```
