FROM node:carbon

# Create app directory
WORKDIR /usr/src/StrangerKnowsBest

# Install dependencies from either package.json or package-lock.json
COPY package*.json ./

# later for production use!!
# RUN npm install --only=production
RUN npm install

# Bundle app source
COPY . .

EXPOSE 80
CMD ["npm", "start"]


# build the image with following command in the directory with the 
# Dockerfile:
# docker build -t strangerknowsbest .