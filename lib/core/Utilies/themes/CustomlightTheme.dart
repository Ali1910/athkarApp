import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData LightTheme() {
  return ThemeData.light().copyWith(
    iconTheme: const IconThemeData(color: Colors.black),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.white),
  );
}
