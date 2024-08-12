# FROM node:6-stretch
FROM node:22.5-slim

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof
RUN npm update --legacy-peer-deps
RUN npm install --legacy-peer-deps
CMD ["npm", "start"]
