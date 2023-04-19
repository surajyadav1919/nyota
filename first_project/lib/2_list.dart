import 'package:first_project/1_list.dart';
import 'package:first_project/home.dart';
import 'package:flutter/material.dart';
class Second_List extends StatefulWidget {
  const Second_List({Key? key}) : super(key: key);

  @override
  State<Second_List> createState() => _Second_ListState();
}
List<String> images = [
  'suraj','satyam','divyansh','03','04','05','06','07','08','09','10',
  '11','12','13','14','15','16','17','18','19','20','21',
  '22','23','24','25','26','27','28','29','30',
  '31','32', '33','34','35','36','37','38','39','40',
  '41','42', '43','44',
];

class _Second_ListState extends State<Second_List> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text('Second List'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing:3,
                    mainAxisSpacing: 3,
                  ),
                      itemBuilder:  (BuildContext context, int index){
                    return Container(
                      color: Colors.red,
                      child: Center(child: Text(images[index])),
                    );
                      },
                  ),

                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Back')),
                  ),

                  ElevatedButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>First_list()));
                  }, child: Text('Next'))
                ],
              ),

            ],
          ),
        ],
      ),
    ));
  }
}
