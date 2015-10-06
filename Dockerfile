FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

RUN mkdir /app
WORKDIR "/app"

RUN git clone https://github.com/agonbar/nodejs-chat.git /app 
RUN chmod 777 -R /app
RUN npm install
ADD start.sh /start.sh
RUN chmod 777 /start.sh
CMD ["/start.sh"]

EXPOSE 8082
