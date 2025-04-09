# Node version to run, 16 is the version 'class'
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependancies
# A wildcard is used to ensure both package.json and package-lock.json are copied
#  where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY index.js .

# Telling the system to use port 8080
EXPOSE 8080

# Command. Telling to use command 'node' to run filename 'index.js'
CMD ["node", "index.js"]