const hre = require("hardhat");

async function main() {
    try {
        // Deploy the contract
        const KaboriaStore = await hre.ethers.getContractFactory("KaboriaStore");
        const kaboriaStore = await KaboriaStore.deploy();

        // Log the deployment transaction hash
        console.log('Deploy transaction:', kaboriaStore.deployTransaction);

        // Wait for the contract deployment transaction to be mined
        const deploymentReceipt = await kaboriaStore.deployTransaction.wait();

        console.log(`Contract deployed to address: ${kaboriaStore.address}`);
        console.log(`Transaction hash: ${deploymentReceipt.transactionHash}`);
    } catch (error) {
        console.error('Error during contract deployment:', error);
    }
}

// Run the main function and handle any errors
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
