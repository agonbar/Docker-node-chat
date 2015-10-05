FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

RUN mkdir /app
RUN chmod 777 /app

RUN git clone https://github.com/agonbar/nodejs-chat.git /app/
RUN mv /app/nodejs-chat/* /app
RUN mv /app/nodejs-chat/.* /app
RUN rmdir /app/nodejs-chat

RUN npm install /app/package.json
RUN node /app/server.js

EXPOSE 8082
