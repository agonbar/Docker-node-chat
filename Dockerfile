FROM google/nodejs

MAINTAINER Adrian Gonzalez Barbosa "adrian.gonzalez.barbosa@gmail.com"

CMD ["mkdir /app"]
CMD ["chmod 777 /app"]

CMD ["git clone https://github.com/agonbar/nodejs-chat.git /app"]

CMD ["npm install /app/package.json"]
CMD ["docker /app/server.js"]

EXPOSE 8082
