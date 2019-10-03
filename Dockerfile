FROM node:8-slim

WORKDIR /server
COPY . /server
RUN npm install -g yarn 
RUN yarn install 

EXPOSE 8080
CMD [ "yarn", "distribute" ] 