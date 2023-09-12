import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KaloTheme {
  static const primaryColor = Color(0xFF0057DD);
  static const secondaryColor = Color(0xFF52ACFF);
  static const blueColor = Color(0xFF307CEC);

  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    
  );

  static final textStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
