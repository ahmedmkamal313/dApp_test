import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  final primaryColor = const Color(0xff1E3A8A);
  final secondryColor = const Color(0xff3EC1D3);
  final accentColor = const Color(0xffFF6F61);
  final backgroundColor = const Color(0xffF0F8FF);
  final whiteColor = const Color(0xffFFFFFF);
  final blackColor = const Color(0xff000000);
  final secondryTextColor = const Color(0xff000435);
  final cardColor = const Color(0xffFAF3DD);

  final TextStyle headingStyle = GoogleFonts.montserrat(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final TextStyle buttonStyle = GoogleFonts.montserrat(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}
