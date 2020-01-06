FROM nginx:alpine

MAINTAINER steve

RUN mv /usr/share/nginx/html/index.html /usr/share/nginx/html/backupindex.html
RUN mv /usr/share/nginx/html/50x.html /usr/share/nginx/html/backup50x.html
RUN apk update
RUN apk add git 
RUN git clone https://github.com/BlackrockDigital/startbootstrap-clean-blog.git
RUN cp -r startbootstrap-clean-blog/. /usr/share/nginx/html
