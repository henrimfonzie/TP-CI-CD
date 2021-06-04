#!/bin/sh

apt update

apt install -y ansible

cd /home/shared/

ansible-playbook -i targets k8s-playbook.yml