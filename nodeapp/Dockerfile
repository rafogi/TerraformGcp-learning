FROM node:18.16.0-alpine3.18
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
CMD ["node", "app.js"]
#commentS
