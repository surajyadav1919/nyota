import 'package:flutter/material.dart';

class sighnup extends StatefulWidget {
  const sighnup({super.key});

  @override
  State<sighnup> createState() => _sighnupState();
}

class _sighnupState extends State<sighnup> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("sighnup screen"),
      ),
    );
  }
}
