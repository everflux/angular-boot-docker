#!/bin/sh

docker pull trion/ng-cli-karma
docker run -u $(id -u) --rm -v "$PWD":/app trion/ng-cli-karma npm install
docker run -u $(id -u) --rm -v "$PWD":/app trion/ng-cli-karma ng build --prod --aot --sourcemaps

docker build -t trion/angular-app .

echo 'docker run -it -p 8081:8080 --rm trion/angular-app'
