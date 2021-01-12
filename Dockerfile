FROM node:10.15.3-stretch-slim

WORKDIR ./app

COPY package*.json ./

RUN npm install

RUN apt-get update && apt-get install -y qpdf libgtk2.0-0 libgtk-3-0 libnotify-dev \
libgconf-2-4 libnss3 libxss1 \
libasound2 libxtst6 xauth xvfb \
libgbm-dev

COPY . ./app

EXPOSE 3000








