# Use an official Node.js runtime as a base image
FROM node:12

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application source code to the working directory
COPY . .

# Expose the port on which your application will run
EXPOSE 3000

# Command to run your application
CMD [ "npm", "start" ]
