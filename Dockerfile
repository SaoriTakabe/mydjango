#FROM ubuntu:14.04
#MAINTAINER alicek106
#LABEL "purpose"="practice"
#RUN apt-get update
#RUN apt-get install apache2 -y
#ADD test.html /var/www/html
#WORKDIR /var/www/html
#RUN ["/bin/bash", "-c","echo hello >> test2.html"]
#EXPOSE 80
#CMD apachectl -DFOREGROUND
#FROM node
#RUN echo hello, node!
#SHELL ["/usr/local/bin/node"]
#RUN -v

FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install apache2 -y
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/bash","/entrypoint.sh"]


