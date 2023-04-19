import 'package:flutter/material.dart';
import 'package:triple_fun/Double.dart';
import 'package:triple_fun/Gridview.dart';
import 'package:triple_fun/Traingle.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}
List<String> images = [
  '0','1','2','3','4','5','6','7','8','9',
];

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimg.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('70.54')),
                  ),
                  Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('70.54')),
                  ),
                  Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('70.54')),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffa5b51c),Color(0xffdb058d),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('70.54')),
                  ),
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffa5b51c),Color(0xffdb058d),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('70.54')),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 210,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Doubledata(),

                  // ListView.builder(itemBuilder: (context)),
                  Column(
                    children: [
                      Container(
                          height: 150,
                          width: 200,
                          child: Image.asset('assets/images/img.png')),
                      Container(
                        height: 20,
                        width: 150,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffa5b51c),Color(0xffdb058d),Color(0xffa5b51c)]
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text('70.54')),
                      ),
                    ],
                  ),
                  Container(
                    height: 250,
                    width: 300,
                    child: GridView.builder(
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 10,
                        mainAxisExtent: 20,
                        crossAxisSpacing:1,
                        mainAxisSpacing: 1,
                      ),
                      itemBuilder:  (BuildContext context, int index){
                        return Container(
                          color: Colors.black45,
                          child: Center(child: Text(images[index])),
                        );
                      },
                    ),
                  ),

                  ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // gradient: LinearGradient(
                    //     colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                    // ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white,width: 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Loot 5 -'),
                      VerticalDivider(thickness: 2,color: Colors.white,),
                      Text('10'),
                      VerticalDivider(thickness: 2,color: Colors.white,),
                      Text('11'),
                      VerticalDivider(thickness: 2,color: Colors.white,),
                      Text('12'),
                      VerticalDivider(thickness: 2,color: Colors.white,),
                      Text('13'),
                      VerticalDivider(thickness: 2,color: Colors.white,),
                      Text('14'),

                    ],
                  )
                ),
                Container(
                  height: 30,
                  width: 202,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                         Container(height: 14,width: 20,color: Colors.black,child: Center(child: Text('0',style: TextStyle(color: Colors.white),)),),
                         Container(height: 14,width: 20,color: Colors.pink,child: Center(child: Text('1',style: TextStyle(color: Colors.white),)),),

                        ],
                      ),
                      Container(height: 28,width: 20,color: Colors.yellow,child: Center(child: Text('1',style: TextStyle(color: Colors.black),)),),
                      Column(
                        children: [
                          Container(height: 14,width: 20,color: Colors.black,child: Center(child: Text('2',style: TextStyle(color: Colors.white),)),),
                          Container(height: 14,width: 20,color: Colors.pink,child: Center(child: Text('1',style: TextStyle(color: Colors.white),)),),

                        ],
                      ),
                      Container(height: 28,width: 20,color: Colors.yellow,child: Center(child: Text('3',style: TextStyle(color: Colors.black),)),),
                      Column(
                        children: [
                          Container(height: 14,width: 20,color: Colors.black,child: Center(child: Text('4',style: TextStyle(color: Colors.white),)),),
                          Container(height: 14,width: 20,color: Colors.pink,child: Center(child: Text('1',style: TextStyle(color: Colors.white),)),),

                        ],
                      ),
                      Container(height: 28,width: 20,color: Colors.yellow,child: Center(child: Text('5',style: TextStyle(color: Colors.black),)),),
                      Column(
                        children: [
                          Container(height: 14,width: 20,color: Colors.black,child: Center(child: Text('6',style: TextStyle(color: Colors.white),)),),
                          Container(height: 14,width: 20,color: Colors.pink,child: Center(child: Text('1',style: TextStyle(color: Colors.white),)),),

                        ],
                      ),
                      Container(height: 28,width: 20,color: Colors.yellow,child: Center(child: Text('7',style: TextStyle(color: Colors.black),)),),
                      Column(
                        children: [
                          Container(height: 14,width: 20,color: Colors.black,child: Center(child: Text('8',style: TextStyle(color: Colors.white),)),),
                          Container(height: 14,width: 20,color: Colors.pink,child: Center(child: Text('1',style: TextStyle(color: Colors.white),)),),

                        ],
                      ),
                      Container(height: 28,width: 20,color: Colors.yellow,child: Center(child: Text('9',style: TextStyle(color: Colors.black),)),),


                    ],
                  )
                ),
                Container(
                    height: 20,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // gradient: LinearGradient(
                        //     colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                        // ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white,width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Loot 5 -'),
                        VerticalDivider(thickness: 2,color: Colors.white,),
                        Text('10'),
                        VerticalDivider(thickness: 2,color: Colors.white,),
                        Text('11'),
                        VerticalDivider(thickness: 2,color: Colors.white,),
                        Text('12'),
                        VerticalDivider(thickness: 2,color: Colors.white,),
                        Text('13'),
                        VerticalDivider(thickness: 2,color: Colors.white,),
                        Text('14'),

                      ],
                    )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Take')),
                  ),
                  Container(
                      height: 20,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // gradient: LinearGradient(
                          //     colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                          // ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white,width: 1)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Loot 5 -'),
                          VerticalDivider(thickness: 2,color: Colors.white,),
                          Text('10'),
                          VerticalDivider(thickness: 2,color: Colors.white,),
                          Text('11'),
                          VerticalDivider(thickness: 2,color: Colors.white,),
                          Text('12'),
                          VerticalDivider(thickness: 2,color: Colors.white,),
                          Text('13'),
                          VerticalDivider(thickness: 2,color: Colors.white,),
                          Text('14'),

                        ],
                      )
                  ),
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Bet Ok')),
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Text('Wheel Zoom On')),
                ),
                Container(

                    height: 30,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('1')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('5')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('10')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('50')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('100')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('200')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('300')),

                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('500')),

                          ),
                        ],
                      ),
                    )
                ),
                Container(
                  height: 20,
                  width: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffa5b51c),Color(0xffcad92c,),Color(0xffa5b51c)]
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Text('Wheel Zoom Off')),
                ),
              ],
            ),



          ],
        ),
      ),
    ));
  }

}

