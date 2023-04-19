import 'package:flutter/material.dart';
//import 'package:gold/Login_Page/login_page.dart';
//import 'package:login_two_y/Live%20Games/lead.dart';

class First_list extends StatefulWidget {
  const First_list({Key? key}) : super(key: key);

  @override
  State<First_list> createState() => _First_listState();
}

class _First_listState extends State<First_list> {

  List<String> images = [
    '00','01','02','03','04','05','06','07','08','09','10',
    '11','12','13','14','15','16','17','18','19','20','21',
    '22','23','24','25','26','27','28','29','30',
    '31','32', '33','34','35','36','37','38','39','40',
    '41','42', '43','44','45','46','47','48','49','50',
    '51','52', '53','54','55','56','57','58','59','60',
    '61','62', '63','64','65','66','67','68','69','70',
    '71','72', '73','74','75','76','77','78','79','80',
    '81','82', '83','84','85','86','87','88','89','90',
    '91','92', '93','94','95','96','97','98','99',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272239),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gold"),
        backgroundColor: Color(0xff272239),
      ),
      body:
      ListView(
        children: [
          Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height*0.88,
                  //height: ,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(0,2,0,0),
                  child: GridView.builder(
                    itemCount: 100,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return
                        Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xff2d2942),
                                  Colors.deepPurple,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(),


                            // Text(images[index],
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //   ),),
                            )
                        );
                    },
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}