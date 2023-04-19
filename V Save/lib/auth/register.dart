import 'package:flutter/material.dart';
import 'package:vsave/auth/otp.dart';
import 'package:vsave/bottombar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            top: 50,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/ic_launcher.png"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Name'),
              ),
              Container(
                height: 40,
                child: TextFormField(

                  keyboardType: TextInputType.name,
                  // cursorHeight: 20,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.only(left: 10,top: 10),
                      filled: true,
                      fillColor: Color(0xffe4f2fd),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "  Enter Name",
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.person,color: Colors.grey,)
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Mobile no'),
              ),
              Container(
                height: 40,
                child: TextFormField(
                  maxLength: 10,

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
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "  Enter mobile no",
                      prefixText: '+91 ',
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      suffixIcon: Icon(Icons.mobile_screen_share,color: Colors.grey,)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Email id'),
              ),
              Container(
                height: 40,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // cursorHeight: 20,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.only(left: 10,top: 10),
                      filled: true,
                      fillColor: Color(0xffe4f2fd),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "  Enter email id ",
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.mail,color: Colors.grey,)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Registration no'),
              ),
              Container(
                height: 40,
                child: TextFormField(

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
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "  Enter Registration no",
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.app_registration,color: Colors.grey,)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Registration Date'),
              ),
              Container(
                height: 40,
                child: TextFormField(

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
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "16-03-2023",
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.date_range,color: Colors.grey,)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Car brand name'),
              ),
              Container(
                height: 40,
                child: TextFormField(

                  keyboardType: TextInputType.name,
                  // cursorHeight: 20,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.only(left: 10,top: 10),
                      filled: true,
                      fillColor: Color(0xffe4f2fd),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "  Enter car brand name",
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.car_crash,color: Colors.grey,)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Car variant'),
              ),
              Container(
                height: 40,
                child: TextFormField(

                  keyboardType: TextInputType.name,
                  // cursorHeight: 20,
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.only(left: 10,top: 10),
                      filled: true,
                      fillColor: Color(0xffe4f2fd),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Color(0xff4181eb), width: 1)),
                      hintText: "  Enter car variant",
                      // hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                      prefixIcon: Icon(Icons.car_crash,color: Colors.grey,)
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8.0),
                child: Center(
                  child: SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp_Page()));
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4cb050),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
