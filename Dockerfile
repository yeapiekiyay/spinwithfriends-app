FROM node:10.15.3-alpine

# Keep package.json and node_modules at the root
WORKDIR /

COPY ./package.json /

RUN npm install -g nodemon@1.18.10
RUN npm install

# Keep our app in /app
WORKDIR /app
COPY ./src /app

ENV PORT=80

CMD ["npm", "start"]
