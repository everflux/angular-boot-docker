#!/bin/sh

cd spring-app
./build.sh

cd ..
cd angular-app
./build.sh

cd ..
docker-compose build
