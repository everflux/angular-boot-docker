#!/bin/sh

#maven
docker pull maven:alpine
docker run -it --rm -u $(id -u) -v "$PWD":/usr/src/mymaven -w /usr/src/mymaven maven:alpine mvn clean install

#gradle
#docker pull gradle:alpine
#docker run --rm -v "$PWD":/project -w /project gradle:alpine gradle init && gradle build

docker build -f Dockerfile -t trion/spring-app .

echo 'docker run -it -p 8080:8080 --rm trion/spring-app'
