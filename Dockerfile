FROM node:10.15.3-alpine

WORKDIR /app

COPY ./package.json /app
COPY ./src /app

RUN npm install -g nodemon@1.18.10
RUN npm install
RUN mv /app/node_modules /node_modules

ENV PORT=80

CMD ["npm", "start"]
