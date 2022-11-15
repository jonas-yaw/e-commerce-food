import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static Color primaryColor = const Color(0xFF687daf);
  static Color primaryColor2 = Colors.green.shade300;
  static Color textColor = const Color(0xFFeeedf2);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);

  static TextStyle textStyle1 = GoogleFonts.quicksand(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle2 = GoogleFonts.quicksand(
    fontSize: 16,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle3 = GoogleFonts.quicksand(
    fontSize: 17,
    color: Colors.grey.shade500,
  );
  static TextStyle textStyle4 = GoogleFonts.quicksand(
    fontSize: 21,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle5 = GoogleFonts.manrope(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}


 //overflow: TextOverflow.ellipsis,