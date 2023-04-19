import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;
import 'package:toggle_switch/toggle_switch.dart';
import 'package:twelve_x_bull/test1.dart';
class Withdraw extends StatefulWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  State<Withdraw> createState() => _WithdrawState();
}
class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
        title: Text('Withdraw Cash',style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.monetization_on_outlined,color: Colors.black,size: 35,),
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('Enter Amount',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 60),
              child: TextFormField(
               maxLength: 10,
                style: TextStyle(fontSize: 40),
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                // cursorHeight: 40,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.currency_rupee,color: Colors.black,size: 40,),
                  counterText: "",
                  hintText: '00',
                  // hintStyle: TextStyle(color: Colors.white,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text('100% Safe & Secure',
                      style: TextStyle(
                          fontSize: 15, color: Colors.white))),
            ),
            SizedBox(
              height: 20,
            ),
            ToggleButtonRun(),
          ],
        ),
      )
    );
  }
  _withdraw(String amount,) async {
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    
    print(userid);
    print("qqqqqqqq");

    final response = await http.post(
      Uri.parse(
          "https://12xbull.foundercodes.com/admin/api/Mobile_app/betadd"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "amount": amount,
        "userid": "$userid",
        // "gameid": id,
      }),
    );

    var data = jsonDecode(response.body);
    print('pppppppp');
    print(data);
    if (data["success"] == "200") {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Transaction()));
      Fluttertoast.showToast(
          msg:data["msg"] ,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.green,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg:data["msg"] ,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.red,
          fontSize: 16.0);
      print("Error");
    }
  }
}
