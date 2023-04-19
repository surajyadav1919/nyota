import 'package:flutter/material.dart';

class ToggleButtonRun extends StatefulWidget {
  @override
  _ToggleButtonRunState createState() => _ToggleButtonRunState();
}
const double width = 300.0;
const double height = 40.0;
const double loginAlign = -1;
const double signInAlign = 1;
const Color selectedColor = Colors.white;
const Color normalColor = Colors.black54;
class _ToggleButtonRunState extends State<ToggleButtonRun> {
  bool data = true;
  late double xAlign;
  late Color loginColor;
  late Color signInColor;

  @override
  void initState() {
    super.initState();
    xAlign = loginAlign;
    loginColor = selectedColor;
    signInColor = normalColor;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                alignment: Alignment(xAlign, 0),
                duration: Duration(milliseconds: 300),
                child: Container(
                  width: width * 0.5,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    data=true;
                    xAlign = loginAlign;
                    loginColor = selectedColor;
                    signInColor = normalColor;
                  });
                },
                child: Align(
                  alignment: Alignment(-1, 0),
                  child: Container(
                    width: width * 0.5,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Text(
                      'upi',
                      style: TextStyle(
                        color: loginColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    data=false;
                    xAlign = signInAlign;
                    signInColor = selectedColor;
                    loginColor = normalColor;
                  });
                },
                child: Align(
                  alignment: Alignment(1, 0),
                  child: Container(
                    width: width * 0.5,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Text(
                      'Account',
                      style: TextStyle(
                        color: signInColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        data == false
            ? Container(
            child: Column(
              children: [
                Text('Account Number'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    // cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(
                        Icons.account_balance,
                      ),
                      hintText: 'Enter Account Number',
                      // hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Text('IFSC CODE'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(fontSize: 20),
                    // cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Enter IFSC Code',
                      // hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Text('Account Holder Name'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 20,),
                    // cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(Icons.account_circle,),
                      hintText: 'Enter Account Holder Name',
                      // hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Text('Mobile No'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20,),
                    decoration: InputDecoration(
                      prefixText: "+91",
                      prefixStyle: TextStyle(color: Colors.black,fontSize: 20),
                      counterText: "",
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(Icons.phone_android,),
                      hintText: 'Enter Mobile no',
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffd2b086), Color(0xff594f43)]),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: OutlinedButton(
                      onPressed: () {
                      },
                      child: Text('Withdraw Cash',
                          style: TextStyle(
                              fontSize: 15, color: Colors.white))),
                ),
              ],
            ))
            : Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('UPI Id'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    // cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Enter upi id ',
                      // hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Text('Account Holder Name'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    style: TextStyle(fontSize: 20,),
                    // cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(Icons.account_circle,),
                      hintText: 'Enter Account Holder Name',
                      // hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Text('Mobile No'),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20,),
                    decoration: InputDecoration(
                      prefixText: "+91",
                      prefixStyle: TextStyle(color: Colors.black,fontSize: 20),
                      counterText: "",
                      contentPadding: EdgeInsets.all(10),
                      suffixIcon: Icon(Icons.phone_android,),
                      hintText: 'Enter Mobile no',
                      focusedBorder: OutlineInputBorder(
                        borderSide:  BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.black45),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffd2b086), Color(0xff594f43)]),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: OutlinedButton(
                      onPressed: () {
                      },
                      child: Text('Withdraw Cash',
                          style: TextStyle(
                              fontSize: 15, color: Colors.white))),
                ),
              ],
            ))
      ],
    );
  }
}
