# Kubernetes

## VM

Pour lancer et se connecter à la VM il suffit de lancer la commande :

    vagrant up && vagrant ssh

Et d'attendre...

La VM possède un fichier provision et disposera d'un répertoire partagé (k8s) situé au niveau du Vagrantfile. Il est lié au répertoire /home/shared/ de la VM.

## Ansible

Le fichier provision va installer ansible et exécuter le playbook associé (k8s-playbook) qui installera Docker, Kubernetes et Minikube. Il terminera par lancer les 3 fichiers *-dpl.yml qui déploieront 3 nodes contenant une application python sur 3 ports différents.

A noter qu'à la fin du fichier une installation de Docker-compose est également faite pour construire et lancer 3 conteneurs dockers contenant la suite ELK.