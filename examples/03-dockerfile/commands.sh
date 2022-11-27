# =============
# 3. Dockerfile
# =============

# =======
# 3.1 JVM
# =======

docker build -t todo-list-jvm ./todo-list-jvm
docker run -it --rm -p 127.0.0.1:8080:8080 todo-list-jvm

# ===========
# 3.2 Node.js
# ===========

docker build -t todo-list-node ./todo-list-node
docker run -it --rm -e PORT=3333 -p 127.0.0.1:3333:3333 todo-list-node