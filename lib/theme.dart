import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/const.dart';

// ?*** Creating A Final Value For Dark And Light Theme.

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  elevatedButtonTheme: elevatedButtonThemeData,
  colorScheme: ThemeData.light()
      .colorScheme
      .copyWith(secondary: secondaryColorLightTheme),
);

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: bgColorDarkTheme,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  colorScheme:
      ThemeData.dark().colorScheme.copyWith(secondary: secondaryColorDarkTheme),
);

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: primaryColor,
    padding: const EdgeInsets.all(defaultPadding),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(defaultBorderRadius),
      ),
    ),
  ),
);
