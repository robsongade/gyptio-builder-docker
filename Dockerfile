FROM node:lts-alpine
WORKDIR  /app

RUN apk add git
RUN git clone https://github.com/robsongade/gyptio-builded.git .
RUN npm cache verify && \
    npm cache clean && \
    npm i
# Add docker-compose-wait tool -------------------
ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

CMD ["/wait"]