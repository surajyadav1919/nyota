import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upi_india/upi_india.dart';
class AddMoneyUpi extends StatefulWidget {
  @override
  _AddMoneyUpiState createState() => _AddMoneyUpiState();
}

class _AddMoneyUpiState extends State<AddMoneyUpi> {
  final _enteramount = TextEditingController();
  Future<UpiResponse>? _transaction;
  UpiIndia _upiIndia = UpiIndia();
  List<UpiApp>? apps;

  TextStyle header = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle value = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  @override
  void initState() {
    _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      setState(() {
        apps = value;
      });
    }).catchError((e) {
      apps = [];
    });
    super.initState();
  }

  Future<UpiResponse> initiateTransaction(UpiApp app, {required String amount}) async {
    final famount=double.parse(amount);
    return _upiIndia.startTransaction(
      app: app,
      receiverUpiId: "merchant1388099.augp@aubank",
      receiverName: '12xbull',
      transactionRefId: 'For Betting',
      transactionNote: '',
      amount: famount,
    );
  }

  Widget displayUpiApps() {
    if (apps == null)
      return Center(child: CircularProgressIndicator());
    else if (apps!.length == 0)
      return Center(
        child: Text(
          "No apps found to handle transaction.",
          style: header,
        ),
      );
    else
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Wrap(
            children: apps!.map<Widget>((UpiApp app) {
              return GestureDetector(
                onTap: () {
                  _transaction = initiateTransaction(app,amount:_enteramount.text);
                  setState(() {});
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.memory(
                        app.icon,
                        height: 60,
                        width: 60,
                      ),
                      Text(app.name),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
  }

  String _upiErrorHandler(error) {
    switch (error) {
      case UpiIndiaAppNotInstalledException:
        return 'Requested app not installed on device';
      case UpiIndiaUserCancelledException:
        return 'You cancelled the transaction';
      case UpiIndiaNullResponseException:
        return 'Requested app didn\'t return any response';
      case UpiIndiaInvalidParametersException:
        return 'Please Enter valid amount';
      default:
        return 'Please Enter Amount';
    }
  }

  void _checkTxnStatus(String status) {
    switch (status) {
      case UpiPaymentStatus.SUCCESS:
        _addamount(_enteramount.text);
        print('Transaction Successful');
        break;
      case UpiPaymentStatus.SUBMITTED:
        print('Transaction Submitted');
        break;
      case UpiPaymentStatus.FAILURE:
        print('Transaction Failed');
        break;
      default:
        print('Received an Unknown transaction status');
    }
  }

  Widget displayTransactionData(title, body) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title: ", style: header),
          Flexible(
              child: Text(
                body,
                style: value,
              )),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            'Add Cash',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.monetization_on_outlined,
                color: Colors.black,
                size: 35,
              ),
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
                child: Text(
                  'Enter Amount',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80,right: 90),
                child: TextFormField(
                  controller: _enteramount,
                  maxLength: 5,
                  style: TextStyle(fontSize: 40),
                  cursorColor: Colors.black,
                  textAlign: TextAlign.center,
                  // cursorHeight: 40,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.currency_rupee,
                      color: Colors.black,
                      size: 40,
                    ),
                    counterText: "",
                    hintText: '00',
                    // hintStyle: TextStyle(color: Colors.white,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Text('Enter amount greater than RS 10'),
              SizedBox(
                height: 20,
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
                        style: TextStyle(fontSize: 15, color: Colors.white))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 45,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffd2b086), Color(0xff594f43)]),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: Text('Select UPI Option',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ),
              displayUpiApps(),
              FutureBuilder(
                future: _transaction,
                builder: (BuildContext context,
                    AsyncSnapshot<UpiResponse> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          _upiErrorHandler(snapshot.error.runtimeType),
                          style: header,
                        ), // Print's text message on screen
                      );
                    }

                    UpiResponse _upiResponse = snapshot.data!;
                    print("hhhhhhhhhhhhhhh");
                    print(_upiResponse);
                    print("vvvvvvvvvvvvvvvv");
                    // Data in UpiResponse can be null. Check before printing
                    String txnId = _upiResponse.transactionId ?? 'N/A';
                    String resCode = _upiResponse.responseCode ?? 'N/A';
                    String txnRef = _upiResponse.transactionRefId ?? 'N/A';
                    String status = _upiResponse.status ?? 'N/A';
                    String approvalRef = _upiResponse.approvalRefNo ?? 'N/A';
                    _checkTxnStatus(status);

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          displayTransactionData('Transaction Id', txnId),
                          displayTransactionData('Response Code', resCode),
                          displayTransactionData('Reference Id', txnRef),
                          displayTransactionData('Status', status.toUpperCase()),
                          displayTransactionData('Approval No', approvalRef),
                        ],
                      ),
                    );
                  } else
                    return Center(
                      child: Text(''),
                    );
                },
              )
            ],
          ),
        ));
  }
  _addamount(String _enteramount) async {
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId")?? "0";
    print(userid);
    print("qqqqqqqqqqqqqqq");
    final response = await http.post(
      Uri.parse(
          "https://12xbull.foundercodes.com/admin/api/Mobile_app/add_money"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "userid": "$userid",
        "amount": _enteramount,
      }),
    );

    var data = jsonDecode(response.body);
    print('pppppppp');
    print(data);
    if (data["success"] == 200) {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Transaction()));
      Fluttertoast.showToast(
          msg:data["msg"] ,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.green,
          fontSize: 16.0);
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) =>
      //             OTPScreens(phoneNo: mobile, userId: userid)));
    } else {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Transaction()));
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
