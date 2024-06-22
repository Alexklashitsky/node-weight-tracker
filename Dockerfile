FROM node:14-alpine
WORKDIR /app
COPY ./package*.json ./

RUN npm install \
	&& npm audit fix --force \

COPY . /app

EXPOSE 8080



ENTRYPOINT ["node", "src/index.js" "./chekdb.sh"]
