#/bin/bash

#build image item-app dengan tag v1 dari Dockerfile
echo "-------------------------------------------------------------"
echo "Build image....\n"
docker build -t item-app:v1 .

#list image yang ada pada lokal
echo "-------------------------------------------------------------"
echo "Daftar Image di lokal:\n"
docker images

#rubah nama image agar sesuai dengan format docker hub
echo "-------------------------------------------------------------"
echo "Rubah nama image\n"
docker tag item-app:v1 tmasbro99/item-app:v1

#login ke docker hub
echo "-------------------------------------------------------------"
echo "Login ke docker hub...\n"
echo $PASSWORD_DOCKER_HUB | docker login -u tmasbro99 --password-stdin

#push ke docker hub
echo "-------------------------------------------------------------"
echo "Unggah image ke docker hub\n"
docker push tmasbro99/item-app:v1
