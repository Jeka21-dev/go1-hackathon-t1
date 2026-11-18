# Go1 Hackathon — T1

## Сборка
docker buildx build --platform linux/amd64 -t go1-t1:latest .

## Проверка
docker run --rm go1-t1:latest ping
