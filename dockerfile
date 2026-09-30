FROM alpine:3.24

RUN apk add --no-cache python3 php postfix apache2 php85-apache2

COPY ./ /app

WORKDIR /app

EXPOSE 8000

CMD [ "python3", "-m", "http.server", "8000" ]
