require('@nomicfoundation/hardhat-toolbox');

/** @type import('hardhat/config').HardhatUserConfig */

const s_p = "Your account privet key please be careful don't upload in github";

module.exports = {
  solidity: "0.8.19",
  networks:{
    sepolia :{
      url: "API KEY URL from Infura or Alchemy",
      accounts: [s_p]
    }
  }
};
