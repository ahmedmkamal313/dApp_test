// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title KaboriaStore
 * @dev This contract represents a simple store for adding and managing items (units).
 * Each unit is represented by an ID, price, name, description, image URL, category, owner, and sold status.
 * The contract allows the store owner to add new items with specified details and a customer to buy available items.
 */
contract KaboriaStore {
    // Store title for identifying the store.
    string storeTitle = "Kaboria Store";
    
    // Counter for tracking the number of units added.
    uint public count = 0;

    // Structure defining a Unit in the store with various attributes.
    struct Unit {
        uint256 id; // Unique identifier for each unit.
        uint256 price; // Price of the unit in Wei.
        string name; // Name of the unit.
        string description; // Description of the unit.
        string image; // Image URL or reference for the unit.
        string category; // Category to which the unit belongs.
        address payable owner; // Owner's address, initially the creator.
        bool sold; // Status indicating if the unit is sold.
    }

    // Event triggered when a new unit is added to the store.
    event AddUnit(
        uint256 id,
        uint256 price,
        string name,
        string description,
        string image,
        string category,
        address payable owner,
        bool sold
    );

    // Event triggered when a unit is purchased.
    event BuyUnit(
        uint256 price,
        string name,
        address payable owner,
        bool sold
    );

    // Mapping to store units with their unique ID as the key.
    mapping(uint256 => Unit) public StoreUnit;

    /**
     * @dev Adds a new unit to the store with specified details.
     * @param price Price of the unit (must be greater than 0).
     * @param name Name of the unit (must be more than 4 characters).
     * @param description Description of the unit (must be more than 10 characters).
     * @param image Image reference for the unit (must be more than 10 characters).
     * @param category Category of the unit (must be more than 2 characters).
     * Requirements:
     * - `price` must be greater than zero.
     * - `name` length must be greater than 4.
     * - `description` length must be greater than 10.
     * - `image` length must be greater than 10.
     * - `category` length must be greater than 2.
     */
    function addUnit(
        uint256 price,
        string memory name,
        string memory description,
        string memory image,
        string memory category
    ) public {
        require(price > 0, "The price should be more than 0"); // Ensure price is valid.
        require(bytes(name).length > 4, "The name should be more than 4 letters"); // Ensure name has sufficient length.
        require(bytes(description).length > 10, "The description should be more than 10 letters"); // Ensure description is descriptive.
        require(bytes(image).length > 10, "The image should be more than 10 characters"); // Ensure image reference is valid.
        require(bytes(category).length > 2, "The category name should be more than 2 characters"); // Ensure category name has sufficient length.

        count++; // Increment unit count.
        StoreUnit[count] = Unit(
            count,
            price,
            name,
            description,
            image,
            category,
            payable(msg.sender), // Set the sender as the owner.
            false // Mark as not sold initially.
        );
        
        // Emit event to log the new unit addition.
        emit AddUnit(count, price, name, description, image, category, payable(msg.sender), false);
    }

    /**
     * @dev Allows a user to purchase a unit by its ID.
     * @param _id The ID of the unit to buy.
     * Requirements:
     * - The buyer cannot be the unit's current owner.
     * - The sent Ether (msg.value) must match the unit's price.
     * - The unit must not already be sold.
     */
    function buyUnit(uint _id) public payable {
        // Fetch the unit from storage to modify it directly in the mapping.
        Unit storage singleUnit = StoreUnit[_id];
        
        // Define the seller's address as the current unit owner.
        address payable seller = singleUnit.owner;

        // Ensure the buyer is not also the seller of the unit.
        require(seller != msg.sender, "You cannot buy your own unit");
        
        // Ensure the buyer has sent the exact price required for the unit.
        require(msg.value == singleUnit.price, "The price should equal the unit price");
        
        // Ensure the unit has not already been sold.
        require(!singleUnit.sold, "Unit is already sold");

        // Transfer the sale price to the seller.
        payable(seller).transfer(msg.value);
        
        // Update the unit's ownership to the buyer.
        singleUnit.owner = payable(msg.sender);
        
        // Mark the unit as sold.
        singleUnit.sold = true;

        // Emit an event to log the sale of the unit.
        emit BuyUnit(singleUnit.price, singleUnit.name, payable(msg.sender), true);
    }
}
