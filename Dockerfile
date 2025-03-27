# Use the official Node.js image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /server/index.ts

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .


RUN npm build

# Expose the port the app runs on
EXPOSE 8080

# Run the app
CMD ["npm", "start"]
