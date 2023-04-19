import 'package:flutter/material.dart';
import 'package:vsave/List/pageslist.dart';
import 'package:vsave/Trends/Trends.dart';
import 'package:vsave/account/view.dart';
import 'package:vsave/community/viewcommunity.dart';
import 'package:vsave/notificationscreen.dart';
import 'package:vsave/profile/profile.dart';
import 'package:vsave/qr/qr.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  final _formKey = GlobalKey<FormState>();
  final String _site = "BestTutorSite.javatpoint";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(
            top: 7,
            bottom: 7,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              "assets/ic_launcher.png",
            ),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 10,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    "assets/people.png",
                  ),
                ),
              ),
            );
          },
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Notificationsss()));
          },
              icon: Icon(Icons.notifications,color: Colors.black,)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  (MaterialPageRoute(
                    builder: (context) => const ProfileView(),
                  )),
                );
              },
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/people.png"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Abner Li",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text(
                          "@technacity",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.person),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FriendList(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.adobe,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'List',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Trends(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.electric_bolt),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Moments',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const viewcommunity(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Icon(Icons.person_pin_circle),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Community',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(Icons.add_alert),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Report a Bug',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            ListTile(
              title: Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Settings and privacy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Help Center',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Night mode',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.radio_button_off_rounded),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApps(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Qr Code',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/people.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Rental Car",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "@Car Specialist . 2 March 23",
                                style:
                                TextStyle(fontSize: 15, color: Colors.grey),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                              "The #CarRental agende is LIVE!\n\nYou won't miss the latest updates\n\n from the team about the great Car Specifications\n\n to come on March 29,2023\n\n\n\n*keynote\n*Workshops\n#CarFassion Live\nCar Tips\nAnd More!\n\nRegister now!"),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "assets/car1.jpg",
                            height: 150,
                            width: 250,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.chat_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "1.44 mm",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.circle_notifications,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "3,404",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "500",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.thumb_up,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "500",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 1.5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/people.png"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Devesh",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "@Car Rental . 28 Feb 23",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                  "The #CarSale agende is LIVE!\n\nYou won't miss the latest updates\n\n from the team about the great CarRental content\n\n to come on March 30,2023\n\n\n\n*keynote\n*Workshops\n#CarRentalSale is Live\n Cars Tips\nAnd More!\n\nRegister now!"),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                "assets/car3.jpg",
                                height: 150,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.chat_rounded,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "1.44 mm",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle_notifications,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "3,404",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.share,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "500",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "500",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 50,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Colors.transparent), //<-- SEE HERE
                  ),
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  hintText: 'Add new Post',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: const Icon(Icons.search)),
            ),
          ),
        ),
      ),
    );
  }
}