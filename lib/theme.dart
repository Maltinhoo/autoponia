import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColor: Colors.green,
  focusColor: Colors.orange,
  highlightColor: Colors.red,
  scaffoldBackgroundColor: Colors.grey.shade300,
  iconTheme: IconThemeData(
    color: Colors.black,
  ),
  primaryIconTheme: IconThemeData(
    color: Colors.amber,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
  ),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: Colors.blueGrey.shade700),
);
