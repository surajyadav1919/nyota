import 'package:flutter/material.dart';
import 'package:suraj/home.dart';
import 'package:suraj/theme/theme_constants.dart';
import 'package:suraj/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}
ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: Home_Page(),
    );
  }
}
