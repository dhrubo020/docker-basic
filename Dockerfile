FROM node:14.5.0
WORKDIR /app

# copy package.json
COPY package.json ./

# installing all packages of packages.json [ like node_modules]
RUN yarn

# copy all project files and folders
COPY . .

# run on port
EXPOSE 3000

# same as nodejs run > node index.js
CMD ["node","index.js"]

#now make a docker image with name docker-express
#run below cmd in your terminal
# > docker build -t docker-express .

# to view your images run
# > docker images

# run your image in a docker-container
# > docker run -p 4000:3000 -d docker-express

# you can run this image in another docker-container
# > docker run -p 4002:3000 -d docker-express-2

# you can run this image in another docker-container
# > docker run -p 4003:3000 -d docker-express-3