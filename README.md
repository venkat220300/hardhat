# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

for compile contracts
```shell
npx hardhat compile
```

for unit test
```shell
npx hardhat test
```
## Deployment

for deploy contract on Sepolia
```shell
npx hardhat ignition deploy ./ignition/modules/Token.js --network sepolia
```

for deploy contract on Mainnet Ethereum
```shell
npx hardhat ignition deploy ./ignition/modules/Token.js --network mainnetETH
```

## Verify
for verfiy contract on Sepolia
```shell
npx hardhat ignition deploy ./ignition/modules/Token.js --network sepolia --verify
```

for verfiy contract on Mainnet Ethereum
```shell
npx hardhat ignition deploy ./ignition/modules/Token.js --network mainnetETH --verify
```