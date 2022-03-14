import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Colors.indigoAccent,
    circularTrackColor: Colors.grey,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // Colour for child widget
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return Colors.black;
      }),
      //Color for button background colour
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        return Colors.purple;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(24.0)),
      shape: MaterialStateProperty.all(const CircleBorder()),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black38,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Colors.indigoAccent,
    circularTrackColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // Colour for child widget
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        return Colors.black;
      }),
      //Color for button background colour
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        return Colors.white;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(24.0)),
      shape: MaterialStateProperty.all(const CircleBorder()),
    ),
  ),
);
