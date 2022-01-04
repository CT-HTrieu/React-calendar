FROM node:14

WORKDIR /usr/src/app
COPY package*.json ./

COPY . .
RUN yarn install
RUN yarn run build

EXPOSE 3000
CMD [ "npm", "run", "start" ]


