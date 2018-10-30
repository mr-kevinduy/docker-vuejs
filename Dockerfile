FROM node:carbon
MAINTAINER KevinDuy<mr.kevinduy@gmail.com>

# Setup environment variables
ENV NODE_PATH=/node_modules
ENV PATH=$PATH:node_modules/.bin

# Install global packages
RUN npm install -g \
	yarn \
  vue-cli \
  quasar-cli \
  firebase-tools

CMD [ "node" ]

WORKDIR /app
