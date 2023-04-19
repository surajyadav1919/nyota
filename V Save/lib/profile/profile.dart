import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vsave/profile/edit_profile.dart';

class Profile extends StatefulWidget {
  final name;
  final bio;
  final website;
  final date;
  const Profile({super.key, this.name, this.bio, this.website, this.date});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ImagePicker _picker = ImagePicker();
  File? uploadimage;
  Future<void> chooseImage() async {
    var choosedimage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      uploadimage = File(choosedimage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Image.asset(
                  "assets/flutter-banner.png",
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: InkWell(
                    onTap: chooseImage,
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/people.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 150,
                  child: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Devesh",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 150,
                  child: Text(
                    "Bio",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Racer",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 150,
                  child: Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Add your Location",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 150,
                  child: Text(
                    "Website",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "https://www.RacerCar.com",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 150,
                  child: Text(
                    "BirthDate",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  widget.date.toString(),
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Tips",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Text(
                      "Off",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 1.5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// EditProfile