FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

CMD ["mkdir /app"]
CMD ["chmod 777 /app"]

CMD ["git clone https://github.com/agonbar/nodejs-chat.git /app"]

ADD start /start
CMD ["chmod 777 /start"]
CMD ["/start"]

EXPOSE 8082
