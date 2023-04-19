import 'dart:convert';
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class add_order_screen extends StatefulWidget {
  const add_order_screen({Key? key}) : super(key: key);

  @override
  State<add_order_screen> createState() => _add_order_screenState();
}
class _add_order_screenState extends State<add_order_screen> {


  String? _id;
  String? _deviceId;
  var lat="0.000";
  var long="0.000";
  var latt;
  var longg;
  var pj;
  String apiKey = "AIzaSyDr9ff8zc6svtdfuQWaZT0gILeRK1Assoc";
  String radius = "30";

  double latitude = 31.5111093;
  double longitude = 74.279664;


  @override
  void initState() {
    Vehicle();
    Farmerr();
    Agentss();
    seasson();
    cropp();
  }
  Future<Uint8List?>loadNetWorkImage(String path) async{
    final completer = Completer<ImageInfo>();
    var image = NetworkImage(path);
    image.resolve(ImageConfiguration()).addListener(
        ImageStreamListener((info,_) =>completer.complete(info))
    );
    final imageInfo = await completer.future;
    final byteData = await imageInfo.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }


  var totallen;







  TextEditingController _datecontrol=TextEditingController();
  DateTime selectedDate = DateTime.now();
  TextEditingController _farmername=TextEditingController();
  TextEditingController _Farmernumber=TextEditingController();
  TextEditingController _agentname=TextEditingController();
  TextEditingController _jobhour=TextEditingController();
  TextEditingController _area=TextEditingController();
  TextEditingController _crop=TextEditingController();
  TextEditingController _rate=TextEditingController();
  // TextEditingController _amount=TextEditingController();
  TextEditingController _advance=TextEditingController();
  TextEditingController _location=TextEditingController();
  var rate;
  var area;
  var totalamount;
  String ?vehicleType ;
  List vehicle_data = [];



  String ?impliment ;
  List ipliment_data = [];


  final berlinWallFell = DateTime.utc(1989, 11, 9);

  String ?seasion ;
  List seasion_data = [];

  String ?farmer ;
  List farmer_data = [];

  String ?agents ;
  List agents_data = [];

  String ?crop ;
  List crop_data = [];

  @override
  Widget build(BuildContext context) {
    var _draggedAddress;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios, size: 20,),),
            automaticallyImplyLeading: false,
            title: Text('Add order'),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lightGreenAccent, Colors.green,]),
              ),
            ),
          ),
          body: Container(
            color: Color(0xffe3e1e1),
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height*0.75,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5, color: Colors.black
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [Colors.lightGreenAccent, Colors.green,]),
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: Text('Add new order', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),),
                            ),
                            SizedBox(height: 10,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 45,
                                    width: MediaQuery.of(context).size.width*0.65,
                                    padding: EdgeInsets.only(left: 10),
                                    // alignment: Alignment.bottomLeft,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1, color: Colors.black54
                                        )
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child:DropdownButton(
                                        hint: Text('Farmer Name',
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),


                                        items: farmer_data.map((item) {
                                          return DropdownMenuItem(
                                              child:  Text(
                                                item['name'].toString()
                                                , overflow: TextOverflow.clip,
                                                // maxLines: ,
                                                softWrap: false,
                                                style: TextStyle(fontFamily: "Windsor",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800,
                                                  // color: Colors.black
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                              value: item['id'].toString()
                                          );
                                        }).toList(),
                                        onChanged: (value)  async {
                                          setState(() {
                                            farmer = value as String ;
                                          }
                                          );

                                        },
                                        value: farmer,
                                        // buttonHeight: 40,
                                        // buttonWidth: 140,
                                        // itemHeight: 40,
                                      ),
                                    ),
                                  ),

                                  GestureDetector(
                                    // onTap: (){
                                    //   showDialog(
                                    //     context: context,
                                    //   );
                                    // },
                                    child: Container(
                                        height: 40,
                                        width: 50,
                                        // decoration: BoxDecoration(
                                        //   color: ColorConstants.secondaryDarkAppColor,
                                        //   borderRadius: const BorderRadius.all(
                                        //     Radius.circular(25.0),
                                        //   ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),

                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade600,
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset:  Offset(1, 1),
                                            ),
                                            BoxShadow(
                                                color: Colors.white,
                                                offset: Offset(-5,-5),
                                                blurRadius: 15,
                                                spreadRadius: 1
                                            ) ,
                                          ],
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.grey.shade200,
                                              Colors.grey.shade300,
                                              Colors.grey.shade400,
                                              Colors.grey.shade500,
                                            ],
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                              Icons.add
                                          ),)
                                    ),
                                  ),
                                ]),

                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: MediaQuery.of(context).size.width*0.85,
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black54
                                      )
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child:DropdownButton(
                                      hint: Text('Agent Name',
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),),


                                      items: agents_data.map((item) {
                                        return DropdownMenuItem(
                                            child:  Text(
                                              item['name'].toString()
                                              , overflow: TextOverflow.clip,
                                              // maxLines: ,
                                              softWrap: false,
                                              style: TextStyle(fontFamily: "Windsor",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                // color: Colors.black
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                            value: item['id'].toString()
                                        );
                                      }).toList(),
                                      onChanged: (value)  async {
                                        setState(() {
                                          agents = value as String ;
                                        }
                                        );

                                      },
                                      value: agents,
                                      // buttonHeight: 40,
                                      // buttonWidth: 140,
                                      // itemHeight: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),

                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width:MediaQuery.of(context).size.width*0.4,
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black54
                                      )
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child:DropdownButton(
                                      hint:  Text('vehicle',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Theme
                                              .of(context)
                                              .hintColor,
                                        ),
                                      ),
                                      items: vehicle_data.map((item) {
                                        return DropdownMenuItem(
                                            child:  Text(
                                              item['name'].toString()
                                              , overflow: TextOverflow.clip,
                                              // maxLines: ,
                                              softWrap: false,
                                              style: TextStyle(fontFamily: "Windsor",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                // color: Colors.black
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                            value: item['id'].toString()
                                        );
                                      }).toList(),
                                      onChanged: (value) async {
                                        setState(() {
                                          vehicleType = value as String ;
                                        }
                                        );
                                        // implimentss(vehicleType);
                                      },
                                      value: vehicleType,
                                      // buttonHeight: 40,
                                      // buttonWidth: 140,
                                      // itemHeight: 40,
                                    ),
                                  ),
                                ),

                                Container(
                                  height: 45,
                                  width:MediaQuery.of(context).size.width*0.4,
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black54
                                      )
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child:DropdownButton(
                                      hint:  Text('implements',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Theme
                                              .of(context)
                                              .hintColor,
                                        ),
                                      ),
                                      items: ipliment_data.map((item) {
                                        return DropdownMenuItem(
                                            child:  Text(
                                              item['implement'].toString()
                                              , overflow: TextOverflow.clip,
                                              // maxLines: ,
                                              softWrap: false,
                                              style: TextStyle(fontFamily: "Windsor",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                // color: Colors.black
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                            value: item['id'].toString()
                                        );
                                      }).toList(),
                                      onChanged: (value) async {
                                        setState(() {
                                          impliment = value as String ;
                                        }
                                        );
                                      },
                                      value: impliment,
                                      // buttonHeight: 40,
                                      // buttonWidth: 140,
                                      // itemHeight: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width*0.4,
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                  ),
                                  child: TextFormField(
                                    readOnly: true,

                                    onTap: () async {
                                      await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2023),
                                          lastDate: DateTime(2101))
                                          .then((pickeddate) {
                                        if (pickeddate != null) {
                                          setState(() {
                                            selectedDate = pickeddate;
                                            _datecontrol.text = "${selectedDate.toLocal()}".split(' ')[0];

                                            //  _date.text =
                                            // "${selectedDate.toLocal()}".split(' ')[0];
                                          });
                                          print(_datecontrol.text);
                                          print('wwwwwwwwwwwww');
                                        }
                                        return null;
                                      });
                                    },

                                    controller: _datecontrol,

                                    // keyboardType: TextInputType.number,
                                    style: const TextStyle(fontSize: 14),
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled:true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:BorderSide(
                                            width: 3, color: Colors.black54
                                        ),                        ),
                                      prefixIcon: Icon(Icons.calendar_month_outlined),
                                      // labelText: "Select Date"
                                      hintText: 'date',
                                      hintStyle: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 48,
                                  margin: EdgeInsets.only(top: 8),
                                  width: MediaQuery.of(context).size.width*0.4,
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                  ),
                                  child: TextFormField(
                                    controller: _jobhour,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      counter: Offstage(),
                                      hintText: 'job hour',
                                      prefixIcon: Icon(Icons.lock_clock, color: Colors.blue,size: 30,),
                                      filled:true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:BorderSide(
                                            width: 3, color: Colors.black54
                                        ),                        ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45,
                                  width: MediaQuery.of(context).size.width*0.4,
                                  alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                  ),
                                  child: TextFormField(
                                    controller:_area,
                                    onChanged: (aaa){
                                      area= int.parse(_area.value.text);
                                      print("area idhar hai");
                                      print(area);
                                      totalamount=area*rate;
                                    },
                                    textAlignVertical: TextAlignVertical.bottom,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      counter: Offstage(),
                                      hintText: 'Area',
                                      prefixIcon: Icon(Icons.compare_arrows, color: Colors.blue,size: 30,),
                                      filled:true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:BorderSide(
                                            width: 3, color: Colors.black54
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  height: 45,
                                  width:MediaQuery.of(context).size.width*0.4,
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black54
                                      )
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child:DropdownButton(
                                      hint:  Row(
                                        children: [

                                          Icon(Icons.area_chart, color: Colors.blue,size: 25,),
                                          Text('Seasions',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Theme
                                                  .of(context)
                                                  .hintColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: seasion_data.map((item) {
                                        return DropdownMenuItem(
                                            child:  Text(
                                              item['temperature'].toString()
                                              , overflow: TextOverflow.clip,
                                              // maxLines: ,
                                              softWrap: false,
                                              style: TextStyle(fontFamily: "Windsor",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                // color: Colors.black
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                            value: item['id'].toString()
                                        );
                                      }).toList(),
                                      onChanged: (value) async {
                                        setState(() {
                                          seasion = value as String ;
                                        }
                                        );
                                      },
                                      value: seasion,
                                      // buttonHeight: 40,
                                      // buttonWidth: 140,
                                      // itemHeight: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  height: 45,
                                  width:MediaQuery.of(context).size.width*0.4,
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.black54
                                      )
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child:DropdownButton(
                                      hint:  Row(
                                        children: [

                                          Icon(Icons.rate_review,
                                            color: Colors.blue,size: 25,),
                                          Text('Crop name',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Theme
                                                  .of(context)
                                                  .hintColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      items: crop_data.map((item) {
                                        return DropdownMenuItem(
                                            child:  Text(
                                              item['name'].toString(),
                                              overflow: TextOverflow.clip,
                                              // maxLines: ,
                                              softWrap: false,
                                              style: TextStyle(fontFamily: "Windsor",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                // color: Colors.black
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                            value: item['id'].toString()
                                        );
                                      }).toList(),
                                      onChanged: (value) async {
                                        setState(() {
                                          crop = value as String ;
                                        }
                                        );
                                      },
                                      value: crop,
                                      // buttonHeight: 40,
                                      // buttonWidth: 140,
                                      // itemHeight: 40,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  height: 45,
                                  width: MediaQuery.of(context).size.width*0.4,
                                  alignment: Alignment.bottomLeft,
                                  decoration: BoxDecoration(
                                  ),
                                  child: TextFormField(
                                    controller: _advance,
                                    textAlignVertical: TextAlignVertical.bottom,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      counter: Offstage(),
                                      //contentPadding: EdgeInsets.all(20),
                                      // labelText: 'Mobile Number',
                                      hintText: 'Advance Received',
                                      prefixIcon: Icon(Icons.area_chart, color: Colors.blue,size: 30,),
                                      filled:true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide:BorderSide(
                                            width: 3, color: Colors.black54
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Text("Total amount", style: TextStyle(fontSize: 15,color: ColorConstants.detail_form),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    height: 45,
                                    width: MediaQuery.of(context).size.width*0.85,
                                    alignment: Alignment.bottomLeft,
                                    decoration: BoxDecoration(
                                    ),
                                    child: _draggedAddress==''? InkWell(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>  Dialog(
                                            shape:RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            elevation: 0,
                                            backgroundColor: Colors.transparent,
                                            child: _buildChild(context),
                                          ),
                                        );
                                      },
                                      child:  Container(
                                        color: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 8,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 22,
                                              color:Theme.of(context).primaryColor,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text('SelectYour address'),
                                          ],
                                        ),
                                      ),):InkWell(

                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>  Dialog(
                                            shape:RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            elevation: 0,
                                            backgroundColor: Colors.transparent,
                                            child: _buildChild(context),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        color: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 8,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 22,
                                              color:Theme.of(context).primaryColor,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Flexible(
                                              child: Text(
                                                _draggedAddress,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                    fontWeight: FontWeight.normal
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),)
                                ),

                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Icon(Icons.notifications_active,color: Colors.red, size: 30,),
                                Text('Time reminder', style: TextStyle(fontSize: 15,),),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 0, right: 0, ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            // decoration: BoxDecoration(
                            //   color: ColorConstants.secondaryDarkAppColor,
                            //   borderRadius: const BorderRadius.all(
                            //     Radius.circular(25.0),
                            //   ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade600,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset:  Offset(1, 1),
                                ),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-5,-5),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                ) ,
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.red.shade200,
                                  Colors.red.shade300,
                                  Colors.red.shade400,
                                  Colors.red.shade500,
                                ],
                              ),
                            ),
                            child: Center(
                                child: Text('cancel'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            add_order( _area.text,  _advance.text, _jobhour.text,_datecontrol.text);
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>add_order_screen()));
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade600,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset:  Offset(1, 1),
                                ),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-5,-5),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                ) ,
                              ],
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.green.shade200,
                                  Colors.green.shade300,
                                  Colors.green.shade400,
                                  Colors.green.shade500,
                                ],
                              ),
                            ),
                            child: Center(
                                child: Text(languages[choosenLanguage]['Confirm Order'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),)
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
  add_order( String _area,String _advance ,String _jobhour, String date ) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'user_id';
    final user_id = prefs.getString(key) ?? 0;
    print(user_id);

    final response = await http.post(
      Uri.parse('https://api.apponrent.com/kisan/public/api/addoder'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'cust_id':'$farmer',
        'assign_user':'$agents',
        'cat_id':'$vehicleType',
        'job_hours':_jobhour,
        'corerage_area':_area,
        'tempe_id':'$seasion',
        'imple_id':'$impliment',
        'user_id':'$user_id',
        'date':'$date',
        'advance':_advance,
        'location':_draggedAddress.toString(),
        'crop_id':'$crop',
        'latitude':latt.toString(),
        'longitude':longg.toString(),





      }),
    );
    final data = jsonDecode(response.body);
    print(data);
    print(date);
    print('farmer');

    print(agents);
    print('agents');
    print(vehicleType);
    print(_draggedAddress);
    print(latt);
    print(longg);

    if (data['success'] == '200') {
      Fluttertoast.showToast(
          msg: data['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      print("Register SucessFully");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));

    }
    else {
      Fluttertoast.showToast(
          msg: data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      print( data['msg'],);
    }
  }




  void getNearbyPolice() async {
    BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
      ),
      "assets/tractoricon.png",
    );
    var url = Uri.parse('https://api.apponrent.com/kisan/public/api/vehicles_latlng/1');
    final response = await http.get(url);
    final data=jsonDecode(response.body);
    print('pankj');
    print(data);
    print(data.length);

    setState(() {
      totallen= data.length;
    });
    for(int i = 0 ; i < data.length; i++) {
      var latsd = double.parse(data[i]['lat']);
      var longsd = double.parse(data[i]['long']);
      print(latsd);
      print(longsd);

      setState(() {
        _markers.add(
            Marker(
                markerId: MarkerId(data[i]['imei'].toString()),
                icon: markerbitmap,
                position: LatLng(latsd, longsd),
                infoWindow: InfoWindow(
                    title: data[i]['imei'].toString(),
                    snippet: data[i]['imei'].toString(),
                    onTap: () {
                      setState(() {

                      });

                    })
            )
        );
      });

    }


  }

  _buildChild(BuildContext context) =>Container(
    height: 300,
    padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    child: Column(
      children: <Widget>[
        Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add new Farmer', style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w600, fontSize: 12, ),),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Image.asset('assets/cancel.png', width: 15,),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [

                    Container(
                      height: 270,
                      // height: MediaQuery.of(context).size.height * 0.85,
                      child: _buildBody(),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ],
    ),
  );
  Widget _buildBody() {
    return Stack(
        children : [
          _getMap(),
          _getCustomPin(),
          // _getCustomDrawer(),
          _getLoctionButton(),
          //_getdrower(),

        ]
    );
  }
  Widget _getMap() {
    return GoogleMap(
        myLocationEnabled: true,
        zoomControlsEnabled: false,
        zoomGesturesEnabled: true,
        myLocationButtonEnabled: false,
        markers: Set<Marker>.of(_markers),
        initialCameraPosition: _cameraPosition!,
        mapType: MapType.terrain,
        onCameraIdle: () {
          _getAddress(_draggedLatlng);
        },
        onCameraMove: (cameraPosition) {
          _draggedLatlng = cameraPosition.target;
        },
        onMapCreated: (GoogleMapController controller) {
          if (!_controller.isCompleted) {
            _controller.complete(controller);
          }
        }
    );
  }
  Future _gotoUserCurrentPosition() async {


    Position currentPosition = await _determineUserCurrentPosition();
    _gotoSpecificPosition(
        LatLng(currentPosition.latitude, currentPosition.longitude));
    final Uint8List locationIcon = await getImages('assets/googleicon.png', 70);
    setState(() async {


      lat = currentPosition.latitude.toString();
      long = currentPosition.longitude.toString();



      var lats = double.parse(lat);
      var longs = double.parse(long);
      // getNearbyTolet();
      // getNearbyPolice();
      // getNearbyHospital();
      _markers.add(
          Marker(
              markerId: MarkerId('0'),
              icon: BitmapDescriptor.fromBytes(locationIcon),
              position: LatLng(lats, longs),
              infoWindow: InfoWindow(
                title: "userName",
              )
          )
      );
    });

  }

  Future _gotoSpecificPosition(LatLng position) async {
    GoogleMapController mapController = await _controller.future;
    mapController.animateCamera(
        CameraUpdate.newCameraPosition(
            CameraPosition(
                target: position,
                zoom: 13.5
            )
        )
    );
    await _getAddress(position);
  }
  Future _getAddress(LatLng position) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude, position.longitude);
    Placemark address = placemarks[0];
    String addresStr = "${address.street}, ${address.locality}, ${address
        .administrativeArea}, ${address.country}";
    setState(() {
      latt = position.latitude;
      longg = position.longitude;
      _draggedAddress = addresStr;
    });
    // SharedPreferences newadd = await SharedPreferences.getInstance();
    // newadd.setString('Adress', addresStr);
  }
  Future _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    //check if user enable service for location permission
    if (!isLocationServiceEnabled) {
      print("user don't enable location permission");
    }
    locationPermission = await Geolocator.checkPermission();
    if(locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if(locationPermission == LocationPermission.denied) {
        print("user denied location permission");
      }
    }

    if(locationPermission == LocationPermission.deniedForever) {
      print("user denied permission forever");
    }
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  }


  Widget _getLoctionButton() {
    return Positioned(
      bottom: 20,
      right: 20,
      child: InkWell(
        onTap:  (){
          _gotoUserCurrentPosition();
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8.0),
            // border: Border.all(
            //   width: 1.2, color: Colors.black
            // ),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, .25), blurRadius: 16.0)
            ],
          ),
          child: Icon(Icons.my_location),
        ),
      ),
    );
  }
  // Widget _getdrower(){
  //   return  Positioned(
  //     top: 40.0,
  //     left: 20,
  //     child: InkWell(
  //       onTap: (){
  //         Navigator.pop(context,_draggedAddress);
  //       },
  //       child: Container(
  //         height: 35,
  //         width:30,
  //         // padding:EdgeInsets.only(left:5, right: 5, top: 0, bottom: 0),
  //         child: Icon(Icons.arrow_back_ios_new_outlined, size: 18, color: Colors.white,),
  //         decoration: BoxDecoration(
  //           color: Colors.green.withOpacity(0.7),
  //           borderRadius: BorderRadius.circular(8.0),
  //           // border: Border.all(
  //           //   width: 1.2, color: Colors.black
  //           // ),
  //           boxShadow: [
  //             BoxShadow(
  //                 color: Color.fromRGBO(0, 0, 0, .25), blurRadius: 16.0)
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  Widget _getCustomPin() {
    return Positioned(
      top: 100,
      left: 120,
      child: InkWell(
        onTap: () async {

          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                title: Text(_draggedAddress,),
                content: Container(
                  height: 200,
                  width: 400,
                  child: Column(
                    children: [
                      Text( 'Latitude '+latt.toString(),),
                      Text( 'longitude '+longg.toString(),),
                      Text( 'Adress '+_draggedAddress,),

                    ],
                  ),
                  // child:Alerts(
                  //     lats:latt.toString(),
                  //     longs:longg.toString(),
                  //     address:_draggedAddress
                  // )
                )
            ),
          );

        },
        child: Container(
          width: 50,
          height: 50,
          child: Image.asset("assets/kisan.png"),
        ),
      ),
    );
  }
}