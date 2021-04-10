# using Node v14
FROM node:14

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port outside container
EXPOSE 3000

# Command used to start application
CMD [ "node", "server/server.js" ]