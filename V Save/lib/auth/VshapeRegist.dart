import 'package:flutter/material.dart';
import 'package:vsave/auth/VshapeVehicle.dart';

void main() => runApp(const V_Registration());
class V_Registration extends StatefulWidget {
  const V_Registration({Key? key}) : super(key: key);

  @override
  State<V_Registration> createState() => _V_RegistrationState();
}

class _V_RegistrationState extends State<V_Registration> {
  List<String> servicelist = <String>[
    'Redesign of Website',
    'Copywriting',
    'Translating Content',
    'Illustration'];
  @override
  Widget build(BuildContext context) {
    String dropdownValue = servicelist.first;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Container(
                height: 250,
                width: 200,
                child: Image.asset("assets/images/truck.png",height: 200,width: 200,),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40),
                    child:Text("Ahods Genset Registration",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Text("Device type",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xfffedfcb),
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xfffedfcb),
                      )
                    ),
                      fillColor: Color(0xfffedfcb),
                    filled: true,
                    focusColor: Color(0xfffedfcb),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                      hintText: "e.g., Car",
                      hintStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Text("Device Install Date *",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfffedfcb),
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfffedfcb),
                          )
                      ),
                      fillColor: Color(0xfffedfcb),
                      filled: true,
                      focusColor: Color(0xfffedfcb),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Text("Device Unique Code *",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfffedfcb),
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfffedfcb),
                          )
                      ),
                      fillColor: Color(0xfffedfcb),
                      filled: true,
                      focusColor: Color(0xfffedfcb),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      hintText: "e.g.,AHOD649164",
                      hintStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Text("Installation Engineer code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfffedfcb),
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xfffedfcb),
                          )
                      ),
                      fillColor: Color(0xfffedfcb),
                      filled: true,
                      focusColor: Color(0xfffedfcb),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      hintText: "e.g.,555-555-555",
                      hintStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Text("Select a Service",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 15,),
            Container(
              height: 50,
              width: 300,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down_sharp,size: 30,),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: servicelist.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Text("Give us more details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  cursorColor: Colors.black,
                  cursorHeight: 30,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffedfcb),
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xfffedfcb),
                        )
                    ),
                    fillColor: Color(0xfffedfcb),
                    filled: true,
                    focusColor: Color(0xfffedfcb),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SizedBox(width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Vehicle_Regis()));
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
                              'Submit & Continue',style: TextStyle(fontSize: 17),
                            )))),
              )


            ],
          ),
        ),
      ),
    );
  }
}
