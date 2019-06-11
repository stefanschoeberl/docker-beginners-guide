# =================
# 2.2 Dockerfile II
# =================

# Image erzeugen
docker build -t todo-list-node .

# Server starten
docker run -it --rm -p 127.0.0.1:3333:3333 todo-list-node

