import 'package:flutter/material.dart';
import 'package:twelve_x_bull/home/home_page.dart';
import 'package:twelve_x_bull/login_page.dart';
import 'package:twelve_x_bull/profile/profile_page.dart';
import 'package:twelve_x_bull/transaction/transaction_page.dart';

class Bottom_Navbar extends StatefulWidget {
  const Bottom_Navbar({Key? key}) : super(key: key);

  @override
  _Bottom_NavbarState createState() => _Bottom_NavbarState();
}

class _Bottom_NavbarState extends State<Bottom_Navbar> {
  int pageIndex = 0;

  final pages = [
    const Home_Page(),
    const Transaction(),
    const Profile(),
     ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272139),
           body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        // color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border.all(width: 2,color: Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.article_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.article_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.person_outline_sharp,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}


