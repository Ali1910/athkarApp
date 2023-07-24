import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData Darktheme() {
  return ThemeData.dark().copyWith(
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black)),
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.black),
  );
}
