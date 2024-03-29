import 'package:flutter/material.dart';

ThemeData customTheme() {
  return ThemeData(
    primaryColor: Colors.green,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
      accentColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.green),
      displayMedium: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.green),
      displaySmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.green),
      headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.green),
      headlineSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.green),
      bodyLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.green),
      bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
      bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
      labelLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
      labelSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    ),
  );
}
