import 'package:flutter/material.dart';

class Notificationsss extends StatefulWidget {
  const Notificationsss({super.key});

  @override
  State<Notificationsss> createState() => _NotificationsssState();
}

class _NotificationsssState extends State<Notificationsss> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
              icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
          title: const Text(
            "Notfications",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Mention",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Card(
                    elevation: 10,
                    child: SizedBox(
                      height: 35,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Mark as read",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "TATA (Multi Purpose)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.car_rental,
                                size: 19,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Tata Motors Ltd. (TML), India’s leading automobile company, today informed the stock exchanges that it has signed an agreement to purchase the 50% shareholding of JayemAutomotives in JT Special Vehicles Pvt. Ltd. (JTSV). Further to this announcement, JTSV will become a wholly owned subsidiary of Tata Motors, following the completion of the procedural requirements.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Toyota (Automative  manufacture)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.car_rental,
                                size: 19,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Toyota plans to use its luxury brand Lexus to spearhead the approach with a full lineup of fully electric zero-emission vehicles by 2030. In particular, the automaker plans to make EV-specific parts like batteries and a dedicated platform to optimize and help expand its lineup and streamline production.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                    "assets/people.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Rustum",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "@ Devesh",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "You have a suggestion for buying  a new Bughati car top Speed 350 km/hr for a good racing car ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                    "assets/people.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Anikeit",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "@ Devesh",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Seriously buying a car ? ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                    "assets/people.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Nikhil",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "@ Devesh",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Is this Suitable to you for buy ? ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                    "assets/people.png",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Daniel",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "@ Devesh",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Hey Bro! Are you you to want to import this car from other country ? ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
