import 'package:flutter/material.dart';
import 'package:vsave/chat/chatpage.dart';
import 'package:vsave/home/homescreen.dart';
import 'package:vsave/messagescreen.dart';
import 'package:vsave/notificationscreen.dart';
import 'package:vsave/setting/setting.dart';
import 'package:vsave/status/status.dart';

import 'community/community.dart';

class bootmbar extends StatefulWidget {
  const bootmbar({super.key});

  @override
  State<bootmbar> createState() => _bootmbarState();
}

class _bootmbarState extends State<bootmbar> {
  int _selectIndex = 0;
  void _ontap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  static final List<Widget> _widgetoption = <Widget>[
    Homescreen(),
    Status(),
    Community(),
    Chat(),
    Setting()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _ontap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          )
        ],
      ),
      body: _widgetoption.elementAt(_selectIndex),
    );
  }
}
