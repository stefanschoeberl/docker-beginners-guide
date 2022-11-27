# =================
# 5. Docker Compose
# =================

# ==================
# 5.1 Website hosten
# ==================

cd nginx
docker compose up
docker compose down

# ===============
# 5.2 Server + DB
# ===============

cd todo-list-db
docker compose up
docker compose down