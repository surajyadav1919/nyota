import 'package:flutter/material.dart';
import 'package:surajyadav/home_page.dart';
import 'package:surajyadav/theme/theme_constant.dart';
import 'package:surajyadav/theme/theme_manager.dart';

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
      title: 'Flutter Demo',
     home: Home_Page(),
    );
  }
}

