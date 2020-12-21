FROM node:lts-alpine
WORKDIR  /app

RUN apk add git
RUN git clone https://github.com/robsongade/gyptio-builded.git . 
RUN npm i

ENTRYPOINT [ "npm","run" ,"start"]