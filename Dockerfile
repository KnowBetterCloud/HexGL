FROM python:latest
LABEL description="HexGL Container Image"
LABEL version="1.0"

CMD mkdir -p /var/www/html
WORKDIR /var/www/html
COPY * /var/www/html/

EXPOSE 8000
CMD "Note: App will be exposed on port: 8000"
CMD python -m http.server

