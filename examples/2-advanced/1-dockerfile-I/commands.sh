# ================
# 2.1 Dockerfile I
# ================

# Image erzeugen
docker build -t todo-list-java .

# Server starten
docker run -it --rm -p 127.0.0.1:8080:8080 todo-list-java

