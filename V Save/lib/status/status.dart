import 'package:flutter/material.dart';
import 'package:vsave/status/fuel_gauge.dart';
import 'package:vsave/status/map.dart';
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  bool power=false;
  bool lock=false;
  bool fan=false;
  bool ac=false;
  bool heater=false;
  bool side=false;
  bool back=false;
  bool front=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(onPressed: (){
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        backgroundColor: Colors.white,
        title: Text('Status',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.refresh,color: Colors.black,)),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.notifications_outlined,color: Colors.black,)),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250,
                  child: Image.network(
                      'https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75'),
                ),
                Positioned(
                    left: 10,
                    top: 10,
                    child: SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[300],
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.share,size: 20,),
                            Text(
                              'Share',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    )),


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Map_Page()));
                },
                child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width*90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            // offset: const Offset(
                            //   4.0,
                            //   4.0,
                            // ),
                            blurRadius: 5.0,
                            spreadRadius:0.1,
                          ),
                        ],
                        border: Border.all(width: 1,color: Colors.grey)

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_history,size: 60,),
                       Text('Live Location')
                      ],
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          // offset: const Offset(
                          //   4.0,
                          //   4.0,
                          // ),
                          blurRadius: 5.0,
                          spreadRadius:0.1,
                        ),
                      ],
                      border: Border.all(width: 1,color: Colors.grey)

                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Speed / Fuel Status',style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){},
                              child:Text('Details >',style: TextStyle(color: Colors.black),))
                        ],
                      ),
                      Text('50 Km/h',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue),),
                      FuelGauge(),
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          // offset: const Offset(
                          //   4.0,
                          //   4.0,
                          // ),
                          blurRadius: 5.0,
                          spreadRadius:0.1,
                        ),
                      ],
                      border: Border.all(width: 1,color: Colors.grey)

                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Engine / Lock Status',style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){},
                              child:Text('Details >',style: TextStyle(color: Colors.black),))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (power==false) InkWell(
                            onTap: (){
                              setState(() {
                                power=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.power_settings_new,color: Colors.grey,),
                                  Text('off',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                power=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.power_settings_new,color: Colors.green,),
                                  Text('on',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),

                          if (lock==false) InkWell(
                            onTap: (){
                              setState(() {
                                lock=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.lock,color: Colors.grey,),
                                  Text('Locked',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                lock=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.lock_open_outlined,color: Colors.green,),
                                  Text('unlocked',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          // offset: const Offset(
                          //   4.0,
                          //   4.0,
                          // ),
                          blurRadius: 5.0,
                          spreadRadius:0.1,
                        ),
                      ],
                      border: Border.all(width: 1,color: Colors.grey)

                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Climate Control Status',style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){},
                              child:Text('Details >',style: TextStyle(color: Colors.black),))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          if (fan==false) InkWell(
                            onTap: (){
                              setState(() {
                                fan=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.mode_fan_off_outlined,color: Colors.grey,),
                                  Text('off',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                fan=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/fan.png',height: 25,width: 25,),
                                  Text('on',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),

                          if (ac==false) InkWell(
                            onTap: (){
                              setState(() {
                                ac=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.ac_unit,color: Colors.grey,),
                                  Text('off',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                ac=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.ac_unit,color: Colors.green,),
                                  Text('on',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),

                          if (heater==false) InkWell(
                            onTap: (){
                              setState(() {
                                heater=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.heat_pump,color: Colors.grey,),
                                  Text('off',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                heater=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.heat_pump,color: Colors.green,),
                                  Text('on',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          // offset: const Offset(
                          //   4.0,
                          //   4.0,
                          // ),
                          blurRadius: 5.0,
                          spreadRadius:0.1,
                        ),
                      ],
                      border: Border.all(width: 1,color: Colors.grey)

                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Others',style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){},
                              child:Text('Details >',style: TextStyle(color: Colors.black),))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          if (side==false) InkWell(
                            onTap: (){
                              setState(() {
                                side=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/side close.png',height: 50,width: 50,),
                                  Text('closed',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                side=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/side open.png',height: 50,width: 50,),
                                  Text('open',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),

                          if (front==false) InkWell(
                            onTap: (){
                              setState(() {
                                front=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/front close.png',height: 50,width: 50,),
                                  Text('closed',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                front=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/front open.png',height: 50,width: 50,),
                                  Text('open',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),

                          if (back==false) InkWell(
                            onTap: (){
                              setState(() {
                                back=true;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/back close.png',height: 50,width: 50,),
                                  Text('closed',style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ),
                          )
                          else InkWell(
                            onTap: (){
                              setState(() {
                                back=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset('assets/car/back open.png',height: 50,width: 50,),
                                  Text('open',style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
