FROM alpine:latest

RUN mkdir /src

WORKDIR /src

 RUN apk -v --update add \
        python3 \
        curl \
        which \
        bash \
        tar \
        postgresql-client

RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT ["tail", "-f", "/dev/null"]
