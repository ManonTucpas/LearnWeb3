// Import ethers form Hardhat package
const { ethers } = require("hardhat");

async function main() {
    /*
      A ContractFactory in ethers.js is an abstraction used to deploy new smart contracts,
      so nftContract here is a factory for instances of our GameItem contract.
  */
  const nftContract = await ethers.getContractFactory("GameItem");

  // we deploy the contract
  const deployedNFTContract = await nftContract.deploy();

  console.log("NFT contract adress: ", deployedNFTContract.address);
}

// Call the main function and catch if error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error);
    process.exit(1);
  });