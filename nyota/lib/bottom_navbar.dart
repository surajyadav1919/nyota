import 'package:flutter/material.dart';
import 'package:nyota/Home.dart';

class Bottom_Navbar extends StatefulWidget {
  const Bottom_Navbar({super.key});

  @override
  State<Bottom_Navbar> createState() => _Bottom_NavbarState();
}

class _Bottom_NavbarState extends State<Bottom_Navbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.red);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('more page',style: optionStyle,),
    Text('more page'),
    Text('more page'),
    Text('more page'),



  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumbs_up_down),
            label: 'more',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'edit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xff008397),
        onTap: _onItemTapped,

      ),
    );
  }
}
