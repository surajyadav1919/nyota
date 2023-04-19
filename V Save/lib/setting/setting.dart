import 'package:flutter/material.dart';
import 'package:vsave/auth/login.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              "assets/ic_launcher.png",
            ),
          ),
        ),
        title: const Text(
          'V Save',
          style: TextStyle(color: Colors.blue),
        ),
        // actions: [
        //   IconButton(onPressed: (){
        //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Notificationsss()));
        //   },
        //       icon: Icon(Icons.notifications,color: Colors.black,)),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: Column(
          children: [
            ListTile(
              onTap: (){},
              title: Text('Notification',),
              leading: Icon(Icons.notification_add,),
            ),
            ListTile(
              onTap: (){},
              title: Text('Language'),
              leading: Icon(Icons.language),
              trailing: Text('English'),

            ),
            ListTile(
              onTap: (){},
              title: Text('Contact Us'),
              leading: Icon(Icons.quick_contacts_mail),

            ),
            ListTile(
              onTap: (){},
              title: Text('Terms & Codition'),
              leading: Icon(Icons.question_mark),

            ),
            ListTile(
              onTap: (){},
              title: Text('Policy'),
              leading: Icon(Icons.policy),

            ),
            ListTile(
              onTap: (){
              },
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),


          ],
        ),
      ),
    );
  }
}
