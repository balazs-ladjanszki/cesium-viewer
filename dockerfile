# Use official Node image
FROM node:20

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the files
COPY . .

# Expose the port Vite uses
EXPOSE 5173

# Run Vite dev server
CMD ["npm", "run", "dev", "--", "--host"]