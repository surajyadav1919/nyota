import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Details',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Add your Profile photo'),


        ],
      ),
    );
  }
}
