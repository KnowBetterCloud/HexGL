FROM python:3.9-slim-buster
#FROM python:latest

LABEL description="HexGL Container Image"
LABEL version="1.0"
LABEL maintainer="knowbettercloud@gmail.com"

#CMD mkdir -p /var/www/html
WORKDIR /var/www/html
# COPY * /var/www/html/
COPY . /var/www/html/

# At Build Time
RUN echo "Note: App will be exposed on port: 8000"
# At Run Time
CMD echo "Note: App will be exposed on port: 8000"
EXPOSE 8000

#CMD python -m http.server 8000
CMD [ "python","-m","http.server","8000"]
