import 'package:flutter/material.dart';
import 'package:vsave/home/calendar.dart';

class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  State<Trip> createState() => _TripState();
}

class _TripState extends State<Trip> {
  final time=<String>[
    "11:04 - 11:14",
    "10:13 - 10:23",
    "09:20 - 09:30",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text("My Trips",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Container(
                child: Row(

                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text("03.2023"),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                color: Colors.black12,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Time"),
                        Text("2,385",style: TextStyle(fontSize: 20),),
                        Text("min",style: TextStyle(color: Colors.grey),),

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Distance"),
                        Text("1,063",style: TextStyle(fontSize: 20)),
                        Text("km",style: TextStyle(color: Colors.grey),),

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Avg.Speed"),
                        Text("23",style: TextStyle(fontSize: 20)),
                        Text("km/h",style: TextStyle(color: Colors.grey),),

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Top Speed"),
                        Text("138",style: TextStyle(fontSize: 20)),
                        Text("km/h",style: TextStyle(color: Colors.grey),),

                      ],
                    ),


                  ],
                ),
              ),
              Calendar(),
              Container(
                height: 200,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context,index){
                      return ListTile(
                        onTap: (){},
                        title: Text(time[index]),
                        trailing: Icon(Icons.arrow_forward_ios),
                      );
                    }),
              )

            ],
          ),
        ),
      ),
    );
  }
}