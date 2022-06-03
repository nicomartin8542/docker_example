FROM node:latest

COPY ["package-lock.json", "package.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install -g npm && npm install -s 

RUN apt-get update && apt-get install -y vim

COPY [".", "/usr/src/"]

EXPOSE 3000

CMD ["npx","nodemon", "index.js"]


