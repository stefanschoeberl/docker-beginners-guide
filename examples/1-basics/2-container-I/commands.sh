# ===============
# 1.2 Container I
# ===============

# Alle laufenden Container anzeigen
docker container ls

# Alle Container anzeigen
docker container ls -a

# Webserver starten (nginx)
docker run -it nginx

# Webserver erreichbar machen
docker run -it -p 127.0.0.1:8080:80 nginx

# Eigene Website über Webserver hosten
docker run -it -p 127.0.0.1:8080:80 -v /full/path/to/website:/usr/share/nginx/html:ro nginx
docker run -it -p 127.0.0.1:8080:80 -v $(pwd)/website:/usr/share/nginx/html:ro nginx

# Datenbank
docker run -it -p 127.0.0.1:3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=1 -e MYSQL_USER=fhlug -e MYSQL_PASSWORD=123 -e MYSQL_DATABASE=fhlugdb mariadb

# Datenbankdaten persistieren
docker run -it -p 127.0.0.1:3306:3306 -v $(pwd)/dbdata:/var/lib/mysql -e MYSQL_RANDOM_ROOT_PASSWORD=1 -e MYSQL_USER=fhlug -e MYSQL_PASSWORD=123 -e MYSQL_DATABASE=fhlugdb mariadb

