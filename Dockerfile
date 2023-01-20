# Create a node environment in the container
FROM node:18-alpine

# create a directory app and switch to that directory
WORKDIR /app

# Copies package.json file to /app directory
COPY package.json .

# Create node_modules for vite-boolgram app
RUN npm i

# Copy the source code to /app directory
COPY . .

# Exposes the port to access the app from outside the container i.e from the browse
EXPOSE 3000

# npm run dev to start the server
CMD ["npm", "run", "dev"]