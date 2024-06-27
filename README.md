# Dockerizing a Node.js Application

This is a simple application used to learn how to create a Docker image.

## Steps

### 1. Create the Dockerfile

Create a file named `Dockerfile` with the following content:

dockerfile
```
FROM node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD ["node", "app.js"]
```
### 2. Build the Image
Use the following command to build the Docker image:

```
docker build -t <name> .
```
Replace <name> with the desired name for your Docker image.

3. Run the Image
To run the Docker image, use one of the following commands:

```
docker run -p 3000:5000 <image_name>
```
or to run it in detached mode:
```
docker run -d -p 3000:5000 <imge_name>
```
Replace <image_name> with the name you used while building the Docker image.
