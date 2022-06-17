FROM node:16.15.1

# Create app directory 
WORKDIR /usr/src/app

# Install.dependencies
# Wildcard for all packages in package.json and pacage-lock.json
COPY package*.json ./

RUN npm install



COPY . .

EXPOSE 8081

CMD ["node","src/server.js"]