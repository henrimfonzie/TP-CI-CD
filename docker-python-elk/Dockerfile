FROM python:3.7-alpine

WORKDIR /app

# Update et recupere git
RUN apk update \
 && apk add git

# Copie du depot
RUN git clone https://github.com/vanessakovalsky/docker-elk.git

# Copie du fichier main.py
RUN cp docker-elk/python/src/main.py .
RUN cp docker-elk/python/src/requirements.txt .

# Suppression des dossiers inutiles
RUN rm -r docker-elk/

# Installation des dependances
RUN pip install -r requirements.txt

# Copie du docker intermediaire vers le courant
COPY . .

# Suppression des fichiers inutiles
RUN rm Dockerfile

CMD ["python3", "main.py"]
