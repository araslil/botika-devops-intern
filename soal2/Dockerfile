FROM node:12.22.9

WORKDIR /app
COPY package.json package-lock.json /app
RUN npm install
COPY . /app
EXPOSE 3000
CMD [“node”, “index.js”]
