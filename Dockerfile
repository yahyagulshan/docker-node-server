# FROM node:4.6
# COPY server.js .
# EXPOSE 80
# CMD node server.js
# #this is test
FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y \
    apt-get install apache2 -y
CMD /usr/sbin/apache2-ctl -D FOREGROUND
EXPOSE 8080
