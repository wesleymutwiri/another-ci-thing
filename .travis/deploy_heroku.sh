#!/bin/sh
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
docker login -u $DOCKER_USERNAME -P $DOCKER_PASSWORD --password=$HEROKU_API_KEY registry.heroku.com 
heroku container:push web --app $HEROKU_APP_NAME
heroku container:release web --app $HEROKU_APP_NAME