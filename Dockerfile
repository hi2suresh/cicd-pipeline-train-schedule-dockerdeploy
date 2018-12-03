FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm audit fix
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
