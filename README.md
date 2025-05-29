# secrets-box
start project:
docker-compose build --build-arg USERNAME=$(whoami) --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) && docker-compose up -d
