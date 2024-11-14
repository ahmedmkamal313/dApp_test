async function main() {
    // Get the contract factory
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    // Deploy the contract
    const Contract = await ethers.getContractFactory("KaboriaStore");
    const contract = await Contract.deploy();
    console.log("Contract deployed to address:", contract.address);
}

// Run the main function and handle any errors
main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

