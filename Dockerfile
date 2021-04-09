FROM python:3.9-alpine3.13

RUN mkdir /app

ADD app.py /app
ADD requirements.txt /app

WORKDIR /app

RUN apk update && \
    pip install -r requirements.txt && \
    rm requirements.txt && \
    apk del build-base && \
    rm -rf /var/cache/apk/*

EXPOSE 8080

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]