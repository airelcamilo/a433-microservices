#!/bin/bash

# Membuat Docker Image dengan nama item-app:v1
docker build -t item-app:v1 .

# Melihat daftar image lokal
docker images

# Mengubah nama image agar sesuai format Docker Hub
docker tag item-app:v1 airelcamilo/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u airelcamilo --password-stdin

# Mengunggah image ke Docker Hub
docker push airelcamilo/item-app:v1

# Logout dari Docker Hub
docker logout
