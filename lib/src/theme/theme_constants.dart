import 'package:flutter/material.dart';

const primaryColor = Colors.blue;
const buttonColor = Colors.tealAccent;
const buttonTextColor = Colors.pink;
const bodyText2 = Colors.teal;
const borderColor = Color.fromARGB(250, 187, 230, 102);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primaryColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.lime,
    ),
  ),
  textTheme: const TextTheme(
    button: TextStyle(color: Colors.pink),
    bodyText2: TextStyle(
      color: bodyText2,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: borderColor),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.pink),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: primaryColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.lime,
    ),
  ),
  textTheme: const TextTheme(
    button: TextStyle(color: Colors.pink),
    bodyText2: TextStyle(
      color: bodyText2,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.lime),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
