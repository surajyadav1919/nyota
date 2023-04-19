import 'package:flutter/material.dart';
import 'package:suraj_app/logout.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('SURAJ YADAV')),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 550,
            width: 350,

            decoration: BoxDecoration(
              border: Border.all(color: Colors.greenAccent,width: 3),
              borderRadius: BorderRadius.circular(10),


            ),

            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,

                  child: Image.asset('assets/images/logo.jpg'),
                ),
                Center(child: Text('LOGIN',
                  style: TextStyle(
                      fontSize: 25,
                      height: 2,
                      color: Colors.blue),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'User Name',

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye_outlined),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Password',

                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){},
                    child: Text('SUBMIT')),
              Text('You Have No Account ?'),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogoutPage()));
                },
                    style: TextButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Create Account')),



              ],

            ),

          ),
        ),
      ),
    );
  }
}
