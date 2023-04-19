import 'package:flutter/material.dart';

class Page_1 extends StatefulWidget {
  const Page_1({Key? key}) : super(key: key);

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff8bd9ff),
        appBar: AppBar(
          title: Text(
            'Add Customer',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff8bd9ff),
          elevation: 0.5,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios, size: 25, color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            height: 600,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.name,

                  decoration: InputDecoration(
                    label: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Enter User Name',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Enter Email-id',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                TextFormField(

                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Enter Mobile Number',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.black12,
                  height: 200,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 230,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                label: Text(
                                  'Enter IMEI Number 1',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 70,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.black),
                                    primary: Colors.black,
                                  ),
                                  child: Text('SCAN'))),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 230,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                label: Text(
                                  'Enter IMEI Number 2',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 40,
                              width: 70,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.black),
                                    primary: Colors.black,
                                  ),
                                  child: Text('SCAN'))),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.white),
                                backgroundColor: Colors.green,
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(fontSize: 20),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
