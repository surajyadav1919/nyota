import 'package:flutter/material.dart';
import 'package:phone_verification/email_login.dart';
import 'package:phone_verification/email_register.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Verification'),
        centerTitle:true,
      ),

      body: Center(
        child: SizedBox(
          height: 500,
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Email_Login()));
              },
                  child: Text('Login')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Email_Register()));
              },
                  child: Text('Register')),
            ],
          ),
        ),
      ),
      );
  }
}
