import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:twelve_x_bull/login_page.dart';
import 'package:http/http.dart' as http;

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _userPhone = TextEditingController();
  final globalkey = GlobalKey<FormState>();
  bool _loading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272139),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/img.png'),
                Text('Register',style: TextStyle(color: Colors.white,fontSize: 50),),
                Text('Please enter the details below to continue',
                  style: TextStyle(color: Colors.grey,fontSize: 15),),
                SizedBox(height: 10),
                Form(
                  key: globalkey,
                    child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: _userName,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Enter User Name',
                        hintStyle: TextStyle(color: Colors.white),
                        counter: Offstage(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xFFF65054)),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xFFF65054)),
                        ),

                        contentPadding:EdgeInsets.only(left: 15),
                      ),


                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter no';
                        }else if(value.length!=10){
                          return 'Please enter 10 digit no';
                        }
                        return null;
                      },
                      controller: _userPhone,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile No',
                        hintStyle: TextStyle(color: Colors.white),
                        counter: Offstage(),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xFFF65054)),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Color(0xFFF65054)),
                        ),

                        contentPadding: EdgeInsets.only(left: 10),
                      ),

                    ),
                  ],
                )),

                SizedBox(height: 30),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffd2b086), Color(0xff594f43)]),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2,color: Colors.white),
                  ),

                  child: OutlinedButton(
                      onPressed: (){
                        if (globalkey.currentState!.validate()) {
                          _registerUser(_userName.text,_userPhone.text);
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(content: Text('Processing Data')),
                          // );
                        }
                      },
                      child: setUpButtonChild()
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have you already Account ?  ",style: TextStyle(color: Colors.white),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Page()));
                    },
                        child:Text('Login',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold))),
                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget setUpButtonChild() {
    if (_loading==false) {
      return  Text("verify",textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,fontSize: 22,
          ));
    } else {
      return CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white));
    }
  }
  _registerUser(
      String _userName,
      String _userPhone,
      ) async{
    setState(() {
      _loading==true;
    });
    final response = await http.post(
      Uri.parse("http://12xbull.foundercodes.com/admin/api/Mobile_app/user_register"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "name":_userName,
        "phone":_userPhone
      }),
    );

    var data = jsonDecode(response.body);
    print('pppppppp');
    print(data);
    if(data["success"]=="200"){
      setState(() {
        _loading==false;
      });
      Fluttertoast.showToast(
          msg: "Register successfull",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.green,
          fontSize: 16.0
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_Page()));

    }else{
      setState(() {
        _loading==false;
      });
      Fluttertoast.showToast(
          msg: "This number is already exist",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.red,
          fontSize: 16.0
      );
      print("Error");
    }
  }

}
