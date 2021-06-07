#!/usr/bin/env bash

#Mise à jour apt
sudo apt update

#Installation de paquets utiles
sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release

#Ajout de la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Ajout du dépôt stable aux sources
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Mise à jour apt
sudo apt update

#Installation des paquets Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#Ajout de l'utilisateur courant au groupe docker
sudo usermod -aG docker $USER

#Installation de docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose