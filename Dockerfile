# Use the official Node.js 18 LTS image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the application runs on
EXPOSE 5173

# Command to start the application
CMD ["npm", "run", "dev"]
