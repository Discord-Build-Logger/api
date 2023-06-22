FROM node:18

WORKDIR /usr/src/api
COPY package*.json ./
COPY prisma ./prisma/
RUN npm install

RUN npx prisma generate

COPY . .

EXPOSE 8080
CMD ["npm", "run", "start"]
