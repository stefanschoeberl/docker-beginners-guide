# ====================
# 4. Multi-Stage Build
# ====================

docker build -t todo-list-multistage ./todo-list-multistage
docker run -it --rm -p 127.0.0.1:8080:8080 todo-list-multistage