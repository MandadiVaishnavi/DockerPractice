FROM node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install     
COPY . .
EXPOSE 5000
CMD ["node","app.js"]
# docker build command: RUN(while building an image)
# docker run:commands in CMD
