from python:latest

WORKDIR /var/www/html
COPY * /var/www/html/

EXPOSE 8000
RUN echo "$PWD"
CMD python -m http.server 8000

