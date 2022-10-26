//creating our deploy file
const { ethers } = require("hardhat");
async function main() {
  
  const whitelistContract = await ethers.getContractFactory("whitelist");

  //deploying the contract
  const deployedWhitelistContract = await whitelistContract.deploy(10);
  //10 is the max no of white listed addresses allowed

  //waiting for it to finish 
  await deployedWhitelistContract.deployed();

  //print address of deployed contract 
  console.log("Whitelist Contract Address:", deployedWhitelistContract.address);
}
//call the main function and catch any errors that may tag along
main() 
  .then(() => process.exit(0)) 
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
  