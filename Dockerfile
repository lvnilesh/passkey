FROM node:20
WORKDIR /usr/src/app
RUN npm install -g npm

# USER 1000


# COPY package*.json .
COPY * .
RUN npm install
CMD ['npx','nodemon', 'index.js']
