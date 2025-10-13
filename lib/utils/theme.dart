import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData instagramTheme = ThemeData(
  textTheme: TextTheme(
    // Instagram wordmark (logo)
    displayLarge: GoogleFonts.pacifico(
      fontSize: 36,
      fontWeight: FontWeight.w500,
    ),

    // main UI text (posts, profile names, etc.)
    bodyMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400),

    // small buttons or captions
    labelSmall: GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.w500),
  ),
);
