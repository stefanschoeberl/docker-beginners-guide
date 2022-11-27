# ============
# 2. Container
# ============

# ==========
# 2.1 Basics
# ==========

# Alle laufenden Container anzeigen
docker container ls

# Webserver starten (nginx)
docker run -it nginx

# Alle Container anzeigen
docker container ls -a

# Webserver erreichbar machen
docker run -it -p 127.0.0.1:8080:80 nginx

# Webserver im Hintergrund starten
docker run -it -d -p 127.0.0.1:8080:80 nginx

# Container anzeigen
docker container ls

# Container stoppen
docker container stop <container name>
docker container stop <container id>

# ==================
# 2.2 Website hosten
# ==================

docker run -it -p 127.0.0.1:8080:80 -v /full/path/to/website:/usr/share/nginx/html:ro nginx
docker run -it -p 127.0.0.1:8080:80 -v "$(pwd)/website:/usr/share/nginx/html:ro" nginx

# ========
# 2.3 Logs
# ========

docker container logs <container name>
docker container logs <container id>

# Live log
docker container logs -f <container name>

# ======================
# 2.4 Container betreten
# ======================

docker container exec -it <container name> /bin/sh
cd /usr/share/nginx/html
cat index.html

# ===========
# 2.5 Cleanup
# ===========

docker container rm <container name>
docker container rm <container id>