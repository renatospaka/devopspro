#!/bin/bash

# Baixa a imagem nginx
docker pull nginx

# Inicia um contêiner nginx, nomeando-o meu-servidor
docker container run -d --name meu-servidor nginx

# Lista todos os contêineres em execução
docker container ls

# Para e remove o contêiner
docker container stop meu-servidor
docker container rm meu-servidor

# Lista todos os containers (inclusive os parados)
docker container ls -a
