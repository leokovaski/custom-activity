# Base image
FROM node:18

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Start the server using the production build
CMD [ "node", "index.js" ]
