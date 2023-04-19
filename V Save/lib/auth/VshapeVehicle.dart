import 'package:flutter/material.dart';
import 'package:vsave/auth/VshapeConfirm.dart';
class Vehicle_Regis extends StatefulWidget {
  const Vehicle_Regis({Key? key}) : super(key: key);

  @override
  State<Vehicle_Regis> createState() => _Vehicle_RegisState();
}

class _Vehicle_RegisState extends State<Vehicle_Regis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 50,top: 30),
            child: Text("Vehicle Registration",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300),),
            ),
            Container(height: 200,width: 200,
                child: Image.asset("assets/images/car1.png",)),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(height: 50,width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Registration Number',
                    hintText: 'Enter Registration Number',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(height: 50,width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        )
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number',
                    hintText: 'Enter Phone Number',
                  ),
                ),
              ),
            ),
            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirm_Car()));
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
                          width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                            'Submit',style: TextStyle(fontSize: 17),
                          )))),
            ),
          ],
        ),
      ),
    );
  }
}
