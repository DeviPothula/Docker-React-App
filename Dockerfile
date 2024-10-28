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

#now we are using nginx to run our react app

FROM nginx:alpine

# Copy the build output to Nginx's web directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose the port 80 for nginx server
EXPOSE 80

# Start the application
CMD ["nginx", "-g", "daemon off;"]