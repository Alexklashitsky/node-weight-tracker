FROM node:14-alpine
RUN mkdir -p /usr/src/app
WORKDIR /app
COPY ./package*.json ./

RUN npm install \
	&& npm audit fix --force \

COPY . .

EXPOSE 8080



ENTRYPOINT ["node", "src/index.js" ]


