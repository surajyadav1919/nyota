import 'package:flutter/material.dart';
class Login_Success extends StatefulWidget {
  const Login_Success({Key? key}) : super(key: key);

  @override
  State<Login_Success> createState() => _Login_SuccessState();
}

class _Login_SuccessState extends State<Login_Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Verification'),
        centerTitle: true,
      ),
      body: Center(child: Text('Login Success...')),
    );
  }
}
