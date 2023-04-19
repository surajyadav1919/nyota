import 'package:flutter/material.dart';
class Bottom_Navbar extends StatefulWidget {
  const Bottom_Navbar({Key? key}) : super(key: key);

  @override
  State<Bottom_Navbar> createState() => _Bottom_NavbarState();
}

class _Bottom_NavbarState extends State<Bottom_Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dependencies'),
      ),

    );
  }
}
