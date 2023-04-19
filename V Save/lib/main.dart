import 'package:flutter/material.dart';
import 'package:vsave/auth/login.dart';
import 'package:vsave/bottombar.dart';
import 'package:vsave/splashscreen.dart';
import 'package:vsave/status/fuel_gauge.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V Save',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

