# Use the official Node.js image as the base image
FROM node:14

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json application.js ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port (optional, but recommended)
EXPOSE 3000

# Define the command to run the application
CMD ["node", "application.js"]
