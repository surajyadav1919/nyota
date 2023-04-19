import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff097b6c),
                          ),
                          hintText: "Search Invitation",
                          contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        Text(
                          "Welcome to Rajesh-Kolkata-4401214",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 55,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(45, 6, 0, 0),
                              child: Image.asset(
                                "assets/logo.png",
                                height: 45,
                              ),
                            ),
                            Center(
                              child: Text(
                                "Nyota",
                                style: TextStyle(
                                    color: Color(0xff00579c),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Positioned(
                                top: 38,
                                left: 117,
                                child: Text(
                                  "Invitation made easy",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ))
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(310, 15, 0, 0),
                    child: InkWell(
                        onTap: () {},
                        child: Text(
                          "VIEW ALL",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xff91cdc7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/card1.png",
                                  height: 70,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Marriage Card",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/card2.png",
                                  height: 70,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Invitation Card",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/card3.png",
                                  height: 70,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Mundan Card",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/card4.png",
                                  height: 70,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Birthday Card",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/card5.png",
                                  height: 70,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Anniversary Card",
                                            style: TextStyle(fontSize: 9),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 150,
                      width: 360,
                      child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, index) {
                            return Stack(
                              children: [
                                PageView(
                                  controller: controller,
                                  children: [
                                    Container(
                                        height: 150,
                                        width: 360,
                                        decoration: BoxDecoration(
                                            color: Color(0xffd24064),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                          "assets/card6.jpg",
                                          height: 150,
                                        )),
                                    Container(
                                        height: 150,
                                        width: 360,
                                        decoration: BoxDecoration(
                                            color: Color(0xffaf8a55),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                          "assets/card7.jpg",
                                          height: 150,
                                        )),
                                    Container(
                                        height: 150,
                                        width: 360,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                          "assets/card8.jpg",
                                          height: 150,
                                        )),
                                    Container(
                                        height: 150,
                                        width: 360,
                                        decoration: BoxDecoration(
                                            color: Color(0xffd7a8c8),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.asset(
                                          "assets/card9.jpg",
                                          height: 150,
                                        )),
                                    Container(
                                        height: 150,
                                        width: 360,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(colors: [
                                              Color(0xffdfcfb6),
                                              Color(0xff7c7467)
                                            ])),
                                        child: Image.asset(
                                          "assets/card10.jpg",
                                          height: 150,
                                        )),
                                  ],
                                ),
                                Positioned(
                                  top: 130,
                                  left: 120,
                                  child: SmoothPageIndicator(
                                    controller: controller,
                                    count: 5,
                                    effect: SlideEffect(
                                      activeDotColor: Colors.black,
                                      dotColor: Colors.white.withOpacity(0.9),
                                      radius: 10,
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.asset(
                              "assets/card11.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.asset(
                              "assets/card12.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.asset(
                              "assets/card13.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.asset(
                              "assets/card14.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 150,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Image.asset(
                                      "assets/card15.png",
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Image.asset(
                                      "assets/card16.png",
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Image.asset(
                                      "assets/card17.png",
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 80,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Image.asset(
                                      "assets/card18.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Wedding",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Text(
                                    "Engagement",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Text(
                                  "Housewaring",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Anniversary",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Invitation",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Invitation",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Invitation",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  "Invitation",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
