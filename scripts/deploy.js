const { ethers } = require("hardhat");

async function main() {
    const Task = await ethers.getContractFactory("Task");

    const task = await Task.deploy("Hello World!");
    console.log("Contract deployed to address: ", task.address);

}

main()
     .then(() => process.exit(0))
     .catch(error => {
         console.error(error);
         process.exit(1); 
     });