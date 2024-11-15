import 'package:flutter/material.dart';
import 'package:testapp/utils/Constants.dart';

Widget customTextFieldWidget(TextEditingController controller, int maxLines, String hint, String textTitle) {
  Constants constants = Constants();

  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: TextField(
        controller: controller,
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: maxLines,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          fontSize: 16,
          color: constants.secondryTextColor,
        ),
        decoration: InputDecoration(
          hintText: hint, floatingLabelStyle: TextStyle(color: constants.secondryTextColor),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: constants.whiteColor, width: 1),
            
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide:  BorderSide(color: constants.primaryColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide:  BorderSide(color: constants.secondryColor, width: 1),
          ),
          labelText: textTitle,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Color(0xff9e9e9e),
          ),
          filled: true,
          fillColor: const Color(0x00f2f2f3),
          isDense: false,
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        ),
      ),
    );
}
