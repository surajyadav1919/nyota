import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
PageController controller = PageController();
List<Widget> _list = <Widget>[
  Image.asset('assets/images/img_5.png', fit: BoxFit.fill,),
  Image.asset('assets/images/img_6.png', fit: BoxFit.fill,),
  Image.asset('assets/images/img_7.png', fit: BoxFit.fill,),
  Image.asset('assets/images/img_8.png', fit: BoxFit.fill,),
  Image.asset('assets/images/img_9.png', fit: BoxFit.fill,),
  Image.asset('assets/images/img_10.png', fit: BoxFit.fill,),
  Image.asset('assets/images/img_11.png', fit: BoxFit.fill,),

];
int _curr=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08A18C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff08A18C),
        toolbarHeight: 150,
        title: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: -2),
                      hintText: ('Search Invitation'),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        'welcome to suraj lko 226028',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                          'Nyota',
                          style: TextStyle(
                              color: Color(0xff065E79),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25,left: 50),
                          child: Text('Invitation made easy',style: TextStyle(color: Color(0xff0eb0f9),fontSize: 6),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xffB0F5F5),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 60,
                          child: Image.asset(
                            'assets/images/img.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text('Marriage card',style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 60,
                          child: Image.asset(
                            'assets/images/img_1.png',
                            fit: BoxFit.fill,

                          ),
                        ),
                        Text('Invitation card',style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 60,
                          child: SizedBox(
                            child: Image.asset(
                              'assets/images/img_2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('Mundan card',style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 60,
                          child: Image.asset(
                            'assets/images/img_3.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text('Birthday card',style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                          width: 60,
                          child: Image.asset(
                            'assets/images/img_4.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text('Anniversary card',style: TextStyle(fontSize: 8),)
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Container(
              height: 170,
              margin: EdgeInsets.only(left: 10,right: 10,top: 20),

              // color: Colors.red,
              child: Stack(
                children: [
                  PageView(
                    children: _list,
                    scrollDirection: Axis.horizontal,
                    // pageSnapping: false,
                    physics: BouncingScrollPhysics(),
                    controller: controller,
                    onPageChanged: (num) {
                      setState(() {
                        _curr = num;
                      }
                      );
                    },
                  ),
                  Positioned(
                    left: 100,
                    bottom: 15,
                    child: SmoothPageIndicator(
                    controller: controller,
                    count: _list.length,
                    effect: JumpingDotEffect(
                      jumpScale: .8,
                      verticalOffset: 10,
                      activeDotColor: Colors.black,
                      dotColor: Colors.white.withOpacity(0.6),
                      radius: 10,
                      spacing: 10,
                      // dotHeight: 8,
                      // dotWidth: 5
                    ),
                  ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
