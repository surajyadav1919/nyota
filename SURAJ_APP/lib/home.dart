import 'package:flutter/material.dart';
import 'package:suraj_app/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SURAJ YADAV'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/images/logo.jpg',
              ),
              // decoration: BoxDecoration(color: Colors.green),

            ),
            ListTile(
              title: Text('How to create account '),
              onTap: () {},
              leading: Icon(Icons.account_circle_sharp),
            ),
            ListTile(
              title: Text('Change password'),
              onTap: () {},
              leading: Icon(Icons.password),
            ),
            ListTile(
              title: Text('Wallet'),
              onTap: () {},
              leading: Icon(Icons.wallet),
            ),
            ListTile(
              title: Text('Add money'),
              onTap: () {},
              leading: Icon(Icons.money),
            ),
            ListTile(
              title: Text('Withdraw money'),
              onTap: () {},
              leading: Icon(Icons.money),
            ),
            ListTile(
              title: Text('Share with friends '),
              onTap: () {},
              leading: Icon(Icons.person_2),
            ),
            Divider(
              height: 150,
            ),
            Container(
              // color: Colors.red,
              alignment: AlignmentDirectional.bottomStart,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('LogOut'),
                    onTap: () {},
                    leading: Icon(Icons.logout),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 304,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      height: 250,
                      width: 100,
                      // decoration: BoxDecoration(
                      //   color: Colors.red),
                      child: Image.asset(
                        'assets/images/girl.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                '1Yr/2Yr classroom course commencing from'),
                          ),
                          Text(
                            '22 Feb , 2021',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          ListTile(
                            title: Text(
                              "classes by india's top faculties",
                              style: TextStyle(fontSize: 10),
                            ),
                            leading: Icon(Icons.check),
                          ),
                          ListTile(
                            title: Text(
                              "concept practice with workbooks and updated theory books",
                              style: TextStyle(fontSize: 10),
                            ),
                            leading: Icon(Icons.check),
                          ),
                          ListTile(
                            title: Text(
                              "assessment of performance through subject wise tests",
                              style: TextStyle(fontSize: 10),
                            ),
                            leading: Icon(Icons.check),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.black26,
                  height: 50,
                  width: 350,
                  child: Center(child: Text('EMI Options Available')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
