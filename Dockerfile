# Microsoft TypeScript/Node base image
FROM mcr.microsoft.com/devcontainers/typescript-node:22

# Working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies 
RUN npm install

# Copy the rest of files
COPY . .

EXPOSE 5173

# Run the 'dev' script 
CMD ["npm", "run", "dev"]