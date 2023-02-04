import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLightTheme {
  static final ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xfFED3237),
        toolbarTextStyle: GoogleFonts.inter(color: Colors.black87)),
    primaryColor: const Color(0xfFED3237),
    accentColor: const Color(0xff373435),
    typography: Typography(),
    textTheme: const TextTheme(),
  );

  static const Color primaryColor = Color(0xfFED3237);
  static const Color secondaryColor = Color(0xff373435);
  static const Color secondaryBorderColor = Color(0xffDDDDDD);

  // Fonts colors
  static const Color primaryFontColor = Color(0xff14181B);
  static const Color secundaryFontColor = Color(0xff555555);
}
