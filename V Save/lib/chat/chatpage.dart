import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final msg = <String>[
      "Chnage",
      "Sahil",
      "Anirudh",
      'Suraj',
      'Manoj',
      'Aryaman',
      'Neeraj',
      'Ajay',
      "Harsh",
      'Pankaj',
    ];
    final img = <String>[
      'assets/ani21.png',
      'assets/ani31.png',
      'assets/ani11.png',
      'assets/ani21.png',
      'assets/ani31.png',
      'assets/ani11.png',
      'assets/ani21.png',
      'assets/ani31.png',
      'assets/ani11.png',
      'assets/ani31.png',

    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              "assets/ic_launcher.png",
            ),
          ),
        ),
        title: const Text(
          'V Save',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert,color: Colors.black,),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.task_alt),
                          title: Text(
                            'Mark as Read',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.delete),
                          title: Text(
                            'Delete',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(img[index]),
                      ),
                      title: Text(msg[index]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}