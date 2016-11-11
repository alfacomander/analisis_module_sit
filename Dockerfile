FROM node:argon

# Create app directory
RUN mkdir -p /home/ubuntu/sit/analisis_module_sit
WORKDIR /home/ubuntu/sit/analisis_module_sit

# Install app dependencies
COPY package.json /home/ubuntu/sit/analisis_module_sit/
RUN npm install

# Bundle app source
COPY . /home/ubuntu/sit/analisis_module_sit

EXPOSE 8080
# CMD [ "npm", "start" ]
CMD node .
# CMD DB_PORT_5432_TCP_ADDR=${DB_PORT_5432_TCP_ADDR} node .
# CMD echo ${DB_PORT_5432_TCP_ADDR}
