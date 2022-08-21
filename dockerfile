FROM node:alpine

# Create app directory
WORKDIR /app

# Copy
COPY package*.json package-lock.json parkings.js ./

# RUN npm 
RUN npm install

# Bundle app source
COPY . ./

# RUN Server
EXPOSE 3000
CMD [ "node", "index.js" ]
