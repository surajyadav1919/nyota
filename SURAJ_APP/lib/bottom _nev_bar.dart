import 'package:flutter/material.dart';
import 'package:suraj_app/home.dart';
import 'package:suraj_app/login.dart';
import 'package:suraj_app/logout.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    HomePage(),
    LoginPage(),
    LogoutPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.login),
                label: 'Login',

            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',

            ),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          iconSize: 30,
          onTap: _onItemTapped,
      ),
    );
  }
}