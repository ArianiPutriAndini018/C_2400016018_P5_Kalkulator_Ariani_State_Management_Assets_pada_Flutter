import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color cream = Color(0xFFFFF8E7);
  static const Color orange = Color(0xFFF4B183);
  static const Color pink = Color(0xFFFF9EC7);
  static const Color blue = Color(0xFFA7D8FF);
  static const Color green = Color(0xFFB8E6B3);
  static const Color black = Color(0xFF25211F);
  static const Color butter = Color(0xFFFFE58A);

  static BoxShadow brutalShadow({double x = 6, double y = 6}) {
    return BoxShadow(color: black, offset: Offset(x, y), blurRadius: 0);
  }

  static OutlineInputBorder inputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: black, width: 2.5),
    );
  }

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: cream,

    colorScheme: const ColorScheme.light(
      primary: orange,
      secondary: pink,
      tertiary: blue,
      surface: cream,
      onPrimary: black,
      onSecondary: black,
      onTertiary: black,
      onSurface: black,
    ),

    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: black,
      displayColor: black,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: orange,
      foregroundColor: black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: black,
      ),
      shape: const Border(bottom: BorderSide(color: black, width: 3)),
    ),
  );
}