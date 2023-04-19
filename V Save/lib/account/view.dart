import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Image.asset("assets/flutter-banner.png"),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/people.png"),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    "@ Yerminis zukerbug",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        height: 60,
                        color: Colors.black12,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "6,664",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Follwing",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    width: 10,
                    thickness: 3,
                    indent: 10,
                    endIndent: 5,
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        height: 60,
                        color: Colors.black12,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "9,999",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
              ),
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Who is to follow you",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(),
                        Column(
                          children: const [
                            Text(
                              "Product hunt",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "@Product hunt",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(),
                        Column(
                          children: const [
                            Text(
                              "zukerburg",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "@mzukerbug",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(),
                        Column(
                          children: const [
                            Text(
                              "Ryan Hoover",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "@Rhoover",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
