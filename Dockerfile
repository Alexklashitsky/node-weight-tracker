FROM node:14-alpine
ENV PORT 8080
EXPOSE 8080

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .
ENTRYPOINT ["node", "src/index.js" ]


