# ============
# 2.3 Registry
# ============

# Registry starten
docker run -it --rm -p 127.0.0.1:5000:5000 registry:2

# Image taggen
docker image tag todo-list-node localhost:5000/todo-list-node:latest

# Image pushen
docker image push localhost:5000/todo-list-node:latest

# Images in Registry auflisten
http://localhost:5000/v2/_catalog
http://localhost:5000/v2/todo-list-node/tags/list

# Image herunterladen
docker image pull <image name>

