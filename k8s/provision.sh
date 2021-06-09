#!/bin/sh

apt update

apt install -y ansible

cd /home/shared/

ansible-playbook -i targets k8s-playbook.yml

cd ./docker-elk/

docker-compose up --build -d

echo "192.168.50.10		logstash" | sudo tee -a /etc/hosts
echo "192.168.50.10		elasticsearch" | sudo tee -a /etc/hosts