# Use an official Node.js image as the base
FROM 863518454462.dkr.ecr.us-east-1.amazonaws.com/node:22

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Expose the default port for Hardhat (if running a local node, optional)
EXPOSE 8545

# Execute Hardhat commands for testing and deployment
CMD ["sh", "-c", "npx hardhat compile && npx hardhat test && npx hardhat ignition deploy ./ignition/modules/Token.js --network sepolia"]
