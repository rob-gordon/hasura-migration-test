Hasura setup with migrations to work locally and on heroku

- Connect repo to heroku `heroku git:remote -a YOUR-APP-NAME`
- Had to set the buildpack to heroku/nodejs
- had to `yarn init` to convince heroku it was a node app
