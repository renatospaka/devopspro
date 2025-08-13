#!/bin/bash

# Sobe o serviço nginx com docker compose
VOLUME_NAME="nginx_logs"
docker volume create $VOLUME_NAME

# Aguarda o container iniciar
CONTAINER_NAME="nginx_test"
docker container run -d --name $CONTAINER_NAME -p 8080:80 -v $VOLUME_NAME:/var/log/nginx nginx
sleep 3

# Gera logs acessando a página
curl http://localhost:8080

# Mostra os logs gerados
echo "Logs atuais:"
docker logs $CONTAINER_NAME

# Para e remove o container
docker container stop $CONTAINER_NAME
docker container rm $CONTAINER_NAME

# Sobe novamente o serviço nginx
NEW_CONTAINER_NAME="nginx_test2"
docker container run -d --name $NEW_CONTAINER_NAME -p 8080:80 -v $VOLUME_NAME:/var/log/nginx nginx
sleep 3
sleep 3

docker logs $NEW_CONTAINER_NAME
docker container exec nginx_test cat /var/log/nginx/access.log
