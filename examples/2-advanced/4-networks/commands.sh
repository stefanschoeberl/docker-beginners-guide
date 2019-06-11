# ============
# 2.4 Networks
# ============

# Image erzeugen
docker build -t todo-list-db .

# Server-Container erzeugen
docker container create -p 127.0.0.1:8080:8080 -e DB_URL=jdbc:mysql://tododb:3306/fhlugdb -e DB_USER=fhlug -e DB_PASSWORD=123 --name todoserver todo-list-db

# Datenbank-Container erzeugen
docker container create -it -p 127.0.0.1:3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=1 -e MYSQL_USER=fhlug -e MYSQL_PASSWORD=123 -e MYSQL_DATABASE=fhlugdb --name tododb mariadb

# Netzwerk erzeugen
docker network create todonet

# Container mit dem Netzwerk verbinden
docker network connect todonet todoserver
docker network connect todonet tododb

# Container starten
docker container start tododb
docker container start todoserver

