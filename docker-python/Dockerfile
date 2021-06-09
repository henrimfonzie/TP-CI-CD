FROM python:3.7-alpine

WORKDIR /app

# Update et recupere git
RUN apk update \
 && apk add git

# Copie du depot
RUN git clone https://github.com/vanessakovalsky/example-python.git

# Copie du fichier main.py
RUN cp example-python/vagrant/src/main.py .

# Suppression des dossiers inutiles
RUN rm -r example-python/

# Copie du fichier des dependances
COPY requirements.txt .

# Installation des dependances
RUN pip install -r requirements.txt

# Copie du docker intermediaire vers le courant
COPY . .

# Suppression des fichiers inutiles
RUN rm requirements.txt Dockerfile

CMD ["python3", "main.py"]
