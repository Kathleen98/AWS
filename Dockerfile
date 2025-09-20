FROM node:22-slim

WORKDIR /usr/src/app

COPY package.json ./
RUN npm i

COPY . .

RUN npm run build

EXPOSE 3300

CMD ["npm", "run", "start"]