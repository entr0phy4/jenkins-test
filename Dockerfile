FROM node:20
WORKDIR /usr/src/app
COPY package*.json ./
RUN if [ -f package.json ]; then npm install; fi
COPY . .
EXPOSE 3000
CMD ["node", "-e", "console.log('Node app container running...')"]

