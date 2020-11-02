FROM node:12-buster

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . ./

RUN apt-get update && apt-get install build-essential
COPY --from=instana/google-cloud-run-nodejs:latest /instana /instana
RUN /instana/setup.sh
ENV NODE_OPTIONS="--require /instana/node_modules/@instana/google-cloud-run"


# The additional packages needed to compile native add-ons can be removed after running
# the /instana/setup.sh script (results in smaller image).

CMD [ "node", "index.js" ]

