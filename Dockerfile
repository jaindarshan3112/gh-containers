FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.icymz5y.mongodb.net
ENV MONGODB_USERNAME batm8870
ENV MONGODB_PASSWORD tRWOQvexpowZcSWH

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]