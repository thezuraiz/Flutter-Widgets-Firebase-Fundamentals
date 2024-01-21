import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        elevation: 0.5,
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black
        )
      ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
  );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluish = Color(0Xff403b58);
}
