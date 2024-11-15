import 'package:flutter/material.dart'; // Importing Material Design package for Flutter widgets
import 'package:testapp/utils/Constants.dart'; // Importing Constants class to access predefined constant values

/// A widget that represents a unit card with an image, title, and price (in ETH).
/// The card has a rounded design with a background color and an image at the top.
Widget unitCardWidget() {
  Constants constants = Constants(); // Create an instance of Constants to access predefined color values

  return Container(
    height: 325, // Set the height of the card to 325 pixels
    decoration: BoxDecoration(
      color: constants.cardColor, // Set the background color of the card using a constant value
      borderRadius: BorderRadius.circular(30), // Apply rounded corners to the card with a radius of 30
    ),
    child: Column(
      children: [
        // Image section with rounded top corners
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)), // Apply rounded top corners to the image
          child: Image.network(
            "https://media.istockphoto.com/id/2175713697/photo/bright-living-room-with-fireplace-and-scandinavian-design.jpg?s=1024x1024&w=is&k=20&c=Lwcn2nnzvTN2f5xqQKsKMyUZpVIqzF2WfIyX340xzhE=", // Network image URL
            height: 250, // Set the height of the image to 250 pixels
            width: double.infinity, // Ensure the image takes up the full width of the container
            fit: BoxFit.cover, // Ensure the image covers the entire area while maintaining its aspect ratio
          ),
        ),
        
        // Title text for the unit
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0), // Add padding on the left and top for positioning
          child: Text(
            "Unit #1", // Text displaying the unit number
            style: TextStyle(
              fontSize: 18, // Set font size to 18
              fontWeight: FontWeight.bold, // Make the text bold
              color: constants.secondryTextColor, // Use a secondary text color from constants
            ),
          ),
        ),

        // Price row with icon and amount
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4.0), // Add padding on the left and top for positioning
          child: Row(
            children: [
              const Icon(Icons.attach_money_sharp), // Icon representing money (currency symbol)
              const SizedBox(width: 8), // Space between the icon and the price text
              Text(
                "1.0 ETH", // Price in ETH (Ethereum)
                style: TextStyle(
                  color: constants.accentColor, // Use accent color for the price text
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
