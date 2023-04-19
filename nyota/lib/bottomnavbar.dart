import 'package:flutter/material.dart';
import 'package:nyota/card.dart';

class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _currentindex = 0;
  final Screen = [
    card(),
    Center(child: Text("Page1")),
    Center(child: Text("Page2")),
    Center(child: Text("Page3")),
    Center(child: Text("Page4")),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff057566),
        body: Screen[_currentindex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _currentindex = 0;
                    });
                  },
                  icon: _currentindex == 0
                      ? const CircleAvatar(
                          backgroundColor: Color(0xff057566),
                          radius: 18,
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      : CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 18,
                          child: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _currentindex = 1;
                    });
                  },
                  icon: _currentindex == 1
                      ? const CircleAvatar(
                          backgroundColor: Color(0xff057566),
                          radius: 18,
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 18,
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _currentindex = 2;
                    });
                  },
                  icon: _currentindex == 2
                      ? const CircleAvatar(
                          backgroundColor: Color(0xff057566),
                          radius: 18,
                          child: Icon(
                            Icons.unfold_more,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 18,
                          child: Icon(
                            Icons.unfold_more,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _currentindex = 3;
                    });
                  },
                  icon: _currentindex == 3
                      ? const CircleAvatar(
                          backgroundColor: Color(0xff057566),
                          radius: 18,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 18,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _currentindex = 4;
                    });
                  },
                  icon: _currentindex == 4
                      ? const CircleAvatar(
                          backgroundColor: Color(0xff057566),
                          radius: 18,
                          child: Icon(
                            Icons.dehaze_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 18,
                          child: Icon(
                            Icons.dehaze_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
