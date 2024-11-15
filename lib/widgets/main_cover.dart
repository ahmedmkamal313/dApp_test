import 'package:flutter/material.dart'; // Importing Flutter's Material Design package
import 'package:testapp/utils/Constants.dart'; // Importing the Constants class for reusable styles and colors
import 'package:testapp/widgets/button_widget.dart'; // Importing a custom button widget

/// A widget that displays a cover image with overlayed text and a button.
/// This widget is built using a `Stack` for layering elements.
Widget mainCover() {
  Constants constants = Constants(); // Accessing an instance of the Constants class for consistent styling

  return Stack(
    children: [
      // The background image container
      Container(
        height: 300, // Fixed height for the cover
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_cover.png'), // Path to the asset image
            fit: BoxFit.cover, // Ensures the image covers the container proportionally
          ),
        ),
      ),
      // Positioned text at the bottom-left of the image
      Positioned(
        bottom: 16.0, // 16 pixels from the bottom of the container
        left: 16.0, // 16 pixels from the left side
        child: Text(
          'Invest with Kaboria', // Display text
          style: constants.headingStyle, // Applying a predefined text style from Constants
        ),
      ),
      // Positioned button at the bottom-right of the image
      Positioned(
        bottom: 16.0, // 16 pixels from the bottom of the container
        right: 16.0, // 16 pixels from the right side
        child: CustomButton(
          onPressed: () {
            // onPressed code here! This can be connected to wallet functionality later
          },
          text: ('Connect Wallet'), // Button label
        ),
      ),
    ],
  );
}
