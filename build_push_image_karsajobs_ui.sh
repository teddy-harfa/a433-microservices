#/bin/bash

#build image karsajobs-ui dengan tag latest dari Dockerfile
echo "-------------------------------------------------------------"
echo -e "Build image....\n"
docker build -t ghcr.io/teddy-harfa/karsajobs-ui:latest .

#list image karsajobs
echo "-------------------------------------------------------------"
echo -e "Daftar Image karsajobs di lokal:\n"
docker images | grep 'karsajobs'

#login ke git package
echo "-------------------------------------------------------------"
echo -e "Login ke git package...\n"
echo $CR_PAT | docker login ghcr.io -u teddy-harfa --password-stdin

#push ke git package
echo "-------------------------------------------------------------"
echo -e "Unggah image ke git package\n"
docker push ghcr.io/teddy-harfa/karsajobs-ui:latest
