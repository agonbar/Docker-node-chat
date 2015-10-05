FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

RUN npm install -g pm2

RUN git clone https://github.com/agonbar/nodejs-chat.git /app
RUN cd /app && npm install

CMD ["pm2 start -x server.js --no-daemon"]

EXPOSE 8082
