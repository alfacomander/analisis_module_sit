FROM node:argon

# Create app directory
RUN mkdir -p /home/ubuntu/sit/analisis_module_sit
WORKDIR /home/ubuntu/sit/analisis_module_sit

# Install app dependencies
COPY package.json /home/ubuntu/sit/analisis_module_sit/
RUN npm install

RUN npm install -g jasmine-node

# Bundle app source
COPY . /home/ubuntu/sit/analisis_module_sit

EXPOSE 3001:3001
CMD ["node", "--prof", "."]