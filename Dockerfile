# Use an official Node.js image as the base image
FROM node:18-alpine

#Setting working directory
WORKDIR /app

#copy packet.json file to installl dependies 
COPY package*.json ./

#Install the required dependies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the application
RUN npm run build

# Use a lightweight server to serve the static files
RUN npm install -g serve

# Expose the port
EXPOSE 3000

# Start the application
CMD ["serve", "-s", "build", "-l", "3000"]