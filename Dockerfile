FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

RUN mkdir /app
RUN chmod 777 /app
RUN cd /app && git clone https://github.com/agonbar/nodejs-chat.git && mv /app/nodejs-chat/* /app && mv /app/nodejs-chat/.* /app && npm install
RUN node /app/server.js

EXPOSE 8082
