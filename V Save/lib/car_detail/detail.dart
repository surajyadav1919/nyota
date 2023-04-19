import 'package:flutter/material.dart';

class Car_detail extends StatefulWidget {
  const Car_detail({super.key});

  @override
  State<Car_detail> createState() => _Car_detailState();
}

class _Car_detailState extends State<Car_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: const Color.fromARGB(255, 231, 234, 235),
              ),
              Positioned(
                bottom: 70,
                child: Container(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/car2.jpg',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
