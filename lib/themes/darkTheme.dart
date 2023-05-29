import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xFF0A0E21),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFF0A0E21), secondary: const Color(0xFF0A0E21)),
  );
}
