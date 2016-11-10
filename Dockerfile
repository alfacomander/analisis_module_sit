FROM node:argon

# Create app directory
RUN mkdir -p /home/ubuntu/sit/analisis_module_sit
WORKDIR /home/ubuntu/sit/analisis_module_sit

# Install app dependencies
COPY /home/ubuntu/sit/analisis_module_sit/package.json /home/ubuntu/sit/analisis_module_sit/
RUN npm install

# Bundle app source
COPY . /home/ubuntu/sit/analisis_module_sit

EXPOSE 8080
CMD [ "npm", "start" ]
