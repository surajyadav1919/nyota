import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class FuelGauge extends StatefulWidget {
  const FuelGauge({Key? key}) : super(key: key);

  @override
  State<FuelGauge> createState() => _FuelGaugeState();
}

class _FuelGaugeState extends State<FuelGauge> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0,top: 10),
      child: LinearPercentIndicator(
        barRadius: Radius.circular(10),
        width: 250.0,
        animation: true,
        animationDuration: 1000,
        lineHeight: 15.0,
        leading: Text("E",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        trailing: Text("F",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
        percent: 0.30,
        center: Text("30.0%"),
        // linearStrokeCap: LinearStrokeCap.butt,
        progressColor: Colors.red,
      ),
    );  }
}
