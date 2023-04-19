import 'package:flutter/material.dart';
import 'package:vsave/auth/otp.dart';
import 'package:vsave/auth/register.dart';
import 'package:vsave/bottombar.dart';

class Otp_Page extends StatefulWidget {
  const Otp_Page({super.key});

  @override
  State<Otp_Page> createState() => _Otp_PageState();
}

class _Otp_PageState extends State<Otp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     elevation: 0,
      //     centerTitle: true,
      //     title: const ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 15,
            right: 15,
          ),
          child: Column(
            children: [

              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/ic_launcher.png"),
              ),

              const SizedBox(
                height: 50,
              ),
              const Text(
                "See what's happening in \nthe world right now",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "By signing , you agree to our Terms, Policy and Cookie use",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Container(
                  height: 40,
                  child: TextFormField(
                    maxLength: 6,

                    keyboardType: TextInputType.number,
                    // cursorHeight: 20,
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    decoration: InputDecoration(

                        counterText: '',
                        contentPadding: EdgeInsets.only(left: 10,top: 10),
                        filled: true,
                        fillColor: Color(0xffe4f2fd),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            BorderSide(color: Color(0xff4181eb), width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                            BorderSide(color: Color(0xff4181eb), width: 1)),
                        hintText: "  Enter OTP",

                        hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                        prefixIcon: Icon(Icons.pin,color: Colors.grey,),
                        suffixIcon: Icon(Icons.mobile_screen_share,color: Colors.grey,)
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>bootmbar()));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4cb050),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        "Verify",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              ),
              Text("Don't have an account?"),

              SizedBox(
                height: 40,
                width: 400,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
