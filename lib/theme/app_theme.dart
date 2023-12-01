import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: Colors.indigo,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      //FloatingActionsButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      //ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 208, 214, 250),
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
