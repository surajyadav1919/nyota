import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vsave/List/pageslist.dart';
import 'package:vsave/Trends/Trends.dart';
import 'package:vsave/account/view.dart';
import 'package:vsave/home/my_trip.dart';
import 'package:vsave/map.dart';
import 'package:vsave/notificationscreen.dart';
import 'package:vsave/profile/profile.dart';
import 'package:vsave/qr/qr.dart';
import 'package:video_player/video_player.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/car.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(
        elevation: 12,
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
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Notificationsss()));
          },
              icon: Icon(Icons.notifications,color: Colors.black,)),
        ],
      ),

      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/car1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/car2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(
                  6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/car3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(
                  6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/car5.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/car6.jfif"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(
                milliseconds: 800,
              ),
              viewportFraction: 0.8,
            ),
          ),

         Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: SizedBox(
                  height: 300,
                  child: Image.network(
                      'https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75'),
                ),
              ),
              Positioned(
                  left: 10,
                  bottom: 40,
                  child: SizedBox(
                    height: 30,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[400],
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Connected',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )),
              Positioned(
                  left: 170,
                  bottom: 40,
                  child: SizedBox(
                    height: 30,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[300],
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Track',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  )),
              const Positioned(
                  right: 10, bottom: 40, child: Icon(Icons.oil_barrel))
            ],
          ),

          Container(
            height: 450,
            color: Colors.amberAccent,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Device Code'),
                          Text('Device Type'),
                          Text('Owner Name'),
                          Text('Fuel Save'),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/locker.png',
                      height: 150,
                      width: 200,
                    ),
                  ],
                ),
                const Positioned(
                    left: 20,
                    top: 80,
                    child: Text(
                      'Your Device.',
                      style: TextStyle(fontSize: 30),
                    )),
                Positioned(
                    left: 50,
                    top: 250,
                    child: Row(
                      children: const [
                        Icon(Icons.water_drop),
                        Text('Range : 85 kms'),
                      ],
                    ))
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Vehicle Status ',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Icon(
                            Icons.settings,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Details >',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Icon(
                              Icons.lock_open,
                              color: Colors.green,
                              size: 60,
                            ),
                            Text('Lock')
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.lock,
                              color: Colors.red,
                              size: 60,
                            ),
                            Text('UnLock')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(thickness: 1,),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Trip()));
              },
              leading: const Icon(
                Icons.location_on_outlined,
                color: Colors.deepPurpleAccent,
              ),
              title: const Text('My Trip'),
              trailing: const Icon(Icons.send),
            ),
          ),
          Container(
            height: 250,
            color: Color(0xffF8DFB3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text('Leaderboard..',style: TextStyle(fontSize: 25),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text('User Name'),
                        SizedBox(height: 20,),
                        Text('User 1'),
                        Text('User 2'),
                        Text('User 3'),
                        Text('User 4'),
                        Text('User 5'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Fuel Save'),
                        SizedBox(height: 20,),

                        Text('20 ltr'),
                        Text('19 ltr'),
                        Text('17 ltr'),

                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
