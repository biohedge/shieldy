FROM 10.16.3-alpine

WORKDIR /server
COPY . /server
RUN npm install -g yarn 
RUN yarn install
RUN yarn build-ts 

EXPOSE 8080
CMD [ "node", "dist/index.js" ] 