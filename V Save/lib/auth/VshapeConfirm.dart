import 'package:flutter/material.dart';
import 'package:vsave/bottombar.dart';
class Confirm_Car extends StatefulWidget {
  const Confirm_Car({Key? key}) : super(key: key);

  @override
  State<Confirm_Car> createState() => _Confirm_CarState();
}
class _Confirm_CarState extends State<Confirm_Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(right: 64,top: 60),
            child: Text("Confirm your car's details",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text("We have fetched your details using your registration\nnumber. "
                  "Anything wrong? You can edit them and help us\nserve you better.",
                style: TextStyle(color: Colors.grey,fontSize: 12),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 125),
              child: Text("Registration Number",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Container(width: 300,height: 50,
                child: TextField(
                  cursorHeight: 30,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    
                    suffix: ElevatedButton(
                      child: Text('Edit',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(color: Colors.black)
                      ),
                      onPressed: () {},
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 205),
              child: Text("Car brand",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Container(width: 300,height: 50,
                child: TextField(
                  cursorHeight: 30,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffix: ElevatedButton(
                      child: Text('Edit',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(color: Colors.black)
                      ),
                      onPressed: () {},
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text("Car variant",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Container(width: 300,height: 50,
                child: TextField(
                  cursorHeight: 30,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffix: ElevatedButton(
                      child: Text('Edit',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(color: Colors.black)
                      ),
                      onPressed: () {},
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text("Registration Date",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Container(width: 300,height: 50,
                child: TextField(
                  cursorHeight: 30,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffix: ElevatedButton(
                      child: Text('Edit',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(color: Colors.black)
                      ),
                      onPressed: () {},
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 28,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bootmbar()));
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
                            'Confirm & Continue',style: TextStyle(fontSize: 17),
                          )))),
            ),
          ],
        ),
      ),
    );
  }
}
