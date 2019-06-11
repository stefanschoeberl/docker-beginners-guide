# ================
# 1.3 Container II
# ================

# Container im Hintergrund starten
docker run -it -d -p 127.0.0.1:8080:80 nginx

# Container anzeigen
docker container ls

# Log ansehen
docker container logs <container name>
docker container logs <container id>

# Live log
docker container logs -f <container name>

# Container betreten
docker container exec -it <container name> /bin/sh
cd /usr/share/nginx/html
cat index.html

# Container stoppen
docker container stop <container name>

