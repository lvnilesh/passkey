Install Prereq
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
newgrp docker

```

Run like this

```
cp .env.sample .env
vi .env # edit the values as you need
docker compose down --remove-orphans
docker compose build --no-cache
docker volume rm -f $(docker volume ls -q)
docker compose up -d --force-recreate
docker compose exec web npx sequelize-cli db:migrate

open localhost:3000

```


During development
```
curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh
sudo usermod -aG docker $USER
newgrp docker

docker compose build --no-cache

docker compose run --service-ports web bash

docker compose up -d && docker compose logs -f

docker compose exec db psql -h 0.0.0.0 -U nilesh -d cg_dev
docker compose exec web npx sequelize-cli model:generate --name User --attributes email:string
docker compose exec web npx sequelize-cli db:migrate
docker compose exec web npm install ejs express-ejs-layouts --save
docker compose exec web npx sequelize-cli model:generate --name PublicKeyCredentials --attributes public_key:string
docker compose exec web npm install express-session --save

docker compose exec web npm install connect-session-sequelize --save
docker compose exec web npm install multer --save
docker compose exec web npm install cookie-parser --save


```



misc

```
node -v
npm init --yes

npm install express --save

node index.js

curl -I http://192.168.1.69:3000

npm install nodemon --save-dev

npx nodemon index.js

npm i sequelize --save
npm i sequelize-cli --save-dev

npm sequelize-cli dbmigrate

npm install pg --save
```

PASSKEY Auth

    https://github.com/divrhino/divrhino-passkeys-express
    https://divrhino.com/articles/passkeys-express
