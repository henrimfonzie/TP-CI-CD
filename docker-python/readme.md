# Introduction

Le Dockerfile associé va permettre de construire une image basée sur le dépot https://github.com/vanessakovalsky/example-python.git

Il s'agit d'un fichier python simple qui renvoie 'hello world devops' sur l'api '/'

# Commandes

## Build image

``` docker build -t python-tp:1.0 . ```

# Tag image

``` docker tag python-tp:1.0 henrimfonzie/python-tp-k8s:1.0 ```

# Push image

``` docker push henrimfonzie/python-tp-k8s:1.0 ```

# Tag image (latest)

``` docker tag python-tp:1.0 henrimfonzie/python-tp-k8s ```

# Push image (latest)

``` docker push henrimfonzie/python-tp-k8s ```

# Run image

``` docker run --rm -p 5542:5000 -d --name python-tp python-tp:1.0 ```
