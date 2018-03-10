FROM node:9.8.0-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        zlib1g \
        fontconfig \
        libfreetype6 \
        libssl-dev \
        libx11-dev \
        libxext-dev \
        libxrender-dev

COPY wkhtmltopdf /usr/bin

RUN chmod +x /usr/bin/wkhtmltopdf

ENV WKHTMLTOPDF_VERSION 0.12.4
