#/bin/bash

#build image item-app dengan tag v1 dari Dockerfile
echo "-------------------------------------------------------------"
echo -e "Build image....\n"
docker build -t item-app:v1 .

#list image yang ada pada lokal
echo "-------------------------------------------------------------"
echo -e "Daftar Image di lokal:\n"
docker images

#rubah nama image agar sesuai dengan format git package
echo "-------------------------------------------------------------"
echo -e "Rubah nama image\n"
docker tag item-app:v1 ghcr.io/teddy-harfa/item-app:v1

#login ke git package
echo "-------------------------------------------------------------"
echo -e "Login ke git package...\n"
echo $CR_PAT | docker login ghcr.io -u teddy-harfa --password-stdin

#push ke git package
echo "-------------------------------------------------------------"
echo -e "Unggah image ke git package\n"
docker push ghcr.io/teddy-harfa/item-app:v1
