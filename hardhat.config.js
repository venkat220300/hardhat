//import { Network, Alchemy } from "alchemy-sdk";

require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();
//const { vars } = require("hardhat/config");
//const ALCHEMY_API_KEY = process.env.ALCHEMY_API_KEY;
//const SEPOLIA_PRIVATE_KEY = process.env.SEPOLIA_PRIVATE_KEY;
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.28",
  networks: {  
   sepolia: {    
   url: process.env.ALCHEMY_API_KEY,
   accounts: [process.env.SEPOLIA_PRIVATE_KEY],
    } ,
  },
};
