import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:vsave/auth/VshapeRegist.dart';
class Vshape_OTP extends StatefulWidget {
  const Vshape_OTP({Key? key}) : super(key: key);

  @override
  State<Vshape_OTP> createState() => _Vshape_OTPState();
}

class _Vshape_OTPState extends State<Vshape_OTP> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var codes="";

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 0,right: 0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("     Enter OTP",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("        OTP sent via SMS",style: TextStyle(color: Colors.grey),),
                  SizedBox(width:80,),
                  Text("Resend OTP in 56s",style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(height: 30,),
              Pinput(
                length: 6,
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,

                showCursor: true,
                onChanged: (value){
                  codes=value;
                },
              ),
              SizedBox(height: 25,),

              SizedBox(width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>V_Registration()));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Ink(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Colors.black, Colors.black]),
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.center,
                            child: const Text(
                              'VERIFY',style: TextStyle(fontSize: 17),
                            )))),
              )

            ],
          ),
        ),
      ),
    );
  }
}
