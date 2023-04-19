import 'package:flutter/material.dart';
import 'package:vsave/auth/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    _fakeload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage("assets/ic_launcher.png"),
      )),
    );
  }

  void _fakeload() async {
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      ),
    );
  }
}
