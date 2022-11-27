# ========
# 6. Tipps
# ========

# =============
# 6.1 Lokale DB
# =============

cd local-dev-db
docker compose up
docker compose down

# ===========
# 6.2 Cleanup
# ===========

# Container löschen
docker container rm <container name>

# Image löschen
docker image rm <image name>

# Netzwerk löschen
docker network rm <network name>

# Gestoppte Container löschen
docker container prune

# Nichtgetaggte Images ohne Container löschen
docker image prune

# Images ohne Container löschen
docker image prune -a

# Netzwerke ohne Container löschen
docker network prune

# Löscht
# - alle gestoppten Container
# - alle Netzwerke ohne Container
# - alle Nichtgetaggten Images
# - Build-Cache 
docker system prune