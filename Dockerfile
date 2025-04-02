FROM node:12.2.0-alpine 

WORKDIR /apps

COPY package*.json ./ 

RUN npm install

COPY view /apps/view

COPY . . 

RUN npm run test || true 

EXPOSE 8000

CMD ["node", "app.js"]
