import 'package:flutter/material.dart';
import 'package:testapp/widgets/customTextFieldWidget.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(8.0),
        child: Column( children: [
          const Text("Welcome to Kaboria"),
          customTextFieldWidget(controller, 1, "Please enter the Unit Name", "Unit Name"),
          customTextFieldWidget(controller, 1, "Please enter the Unit Price", "Unit Price"),
          customTextFieldWidget(controller, 4, "Please enter the Unit description", "Unit Discription"),
          ],
        )),
      ),
    );
  }
}