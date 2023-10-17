# Dockerfile for React client
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire client directory to the container
COPY . .

# Expose the necessary port
EXPOSE 3000

# Start the React application
CMD ["npm", "start"]