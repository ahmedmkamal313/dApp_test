import 'package:flutter/material.dart';
import 'package:testapp/utils/Constants.dart';
import 'package:testapp/widgets/custom_textfield_widget.dart';
import 'package:testapp/widgets/main_cover.dart';
import 'package:testapp/widgets/unit_card_widget.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});
  TextEditingController controller = TextEditingController();
  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(  // Wrap the column with SingleChildScrollView
            child: Column(
              children: [
                const Text("Welcome to Kaboria"),
                mainCover(),
                customTextFieldWidget(controller, 1, "Please enter the Unit Name", "Unit Name"),
                customTextFieldWidget(controller, 1, "Please enter the Unit Price", "Unit Price"),
                customTextFieldWidget(controller, 4, "Please enter the Unit description", "Unit Discription"),
                unitCardWidget(
                  "https://plus.unsplash.com/premium_photo-1676823553207-758c7a66e9bb?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  "Unit #1", 
                  "10.0"
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
