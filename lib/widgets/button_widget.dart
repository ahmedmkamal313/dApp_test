import 'package:flutter/material.dart'; // Importing Flutter's Material Design package
import 'package:testapp/utils/Constants.dart'; // Importing a custom Constants class for reusable styles and colors

/// A reusable custom button widget that uses constants for consistent styling.
/// Accepts a `text` to display on the button and an `onPressed` callback function.
class CustomButton extends StatelessWidget {
  final String text; // Text to display on the button
  final VoidCallback onPressed; // Callback function executed when the button is pressed

  // Constructor to initialize the button's text and onPressed callback
  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants(); // Accessing an instance of the Constants class for reusable values

    return ElevatedButton(
      onPressed: onPressed, // Assigning the callback function to the button
      style: ElevatedButton.styleFrom(
        backgroundColor: constants.primaryColor, // Setting the button's background color
        foregroundColor: constants.whiteColor, // Setting the button's text (foreground) color
        elevation: 8.0, // Adding shadow to create a sense of depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Giving the button rounded corners
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0, // Padding on the left and right sides
          vertical: 12.0, // Padding on the top and bottom
        ), // Ensuring consistent padding around the button's content
      ),
      child: Text(
        text, // Displaying the provided text on the button
        style: constants.buttonStyle, // Applying a predefined text style from Constants
      ),
    );
  }
}
