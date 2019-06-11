# ==========================
# 5.1 Multi-Stage Dockerfile
# ==========================

# Image erzeugen
docker build -t todo-list-multistage .

# Server starten
docker run -it --rm -p 127.0.0.1:8080:8080 todo-list-multistage

