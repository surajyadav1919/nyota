

import 'package:flutter/material.dart';
import 'package:triple_fun/Gridview.dart';

class Doubledata extends StatefulWidget {

  @override
  State<Doubledata> createState() => _DoubledataState();
}

class _DoubledataState extends State<Doubledata> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridData(counts:'0'),
        GridData(counts:'1'),
        GridData(counts:'2'),
        GridData(counts:'3'),
        GridData(counts:'4'),
        GridData(counts:'5'),
        GridData(counts:'6'),
        GridData(counts:'7'),
        GridData(counts:'9'),
      ],
    );
  }
}
