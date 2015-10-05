FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

RUN npm install -g pm2

RUN git clone https://github.com/agonbar/nodejs-chat.git /app
RUN chmod 755 /app

ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 8082
