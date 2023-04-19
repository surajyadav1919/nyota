import 'package:flutter/material.dart';

class vsaveterDrawerheader extends StatelessWidget {
  final String image;
  final String account;
  final int follower;
  final int following;
  const vsaveterDrawerheader(
      {super.key,
      required this.image,
      required this.account,
      required this.follower,
      required this.following});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image),
      ],
    );
  }
}
