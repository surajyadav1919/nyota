import 'package:flutter/material.dart';
import 'package:triple_fun/Traingle.dart';
import 'package:triple_fun/home_page.dart';

class GridData extends StatefulWidget {
  final String counts;


   GridData({Key ?key, required this.counts}) : super(key: key);

  @override
  State<GridData> createState() => _GridDataState();
}

class _GridDataState extends State<GridData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 18,
          width: MediaQuery.of(context).size.width*0.25,
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10,
              mainAxisExtent: 20,
              crossAxisSpacing:1,
              mainAxisSpacing: 1,
            ),
            itemBuilder:  (BuildContext context, int index){
              return InkWell(
                onTap: (){
                  print(widget.counts+images[index]);
                },
                child: Container(
                  color: Colors.black45,
                  child: Center(child: Text(widget.counts+images[index])),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: GestureDetector(

            onTap: () {},
            child: RotatedBox(
              quarterTurns: 1,
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: Colors.blue,
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: Container(
                  height:16,
                  width: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
