FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME githubaction
ENV MONGODB_CLUSTER_ADDRESS cluster0.1yjyr.mongodb.net
ENV MONGODB_USERNAME github
ENV MONGODB_PASSWORD UsqziXke8MH85zcx

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]