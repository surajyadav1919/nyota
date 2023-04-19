import 'package:flutter/material.dart';
class Email_Register extends StatefulWidget {
  const Email_Register({Key? key}) : super(key: key);

  @override
  State<Email_Register> createState() => _Email_RegisterState();
}

class _Email_RegisterState extends State<Email_Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Email Verification'),
        centerTitle: true,
        // backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 550,
            width: 350,

            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue,width: 3),
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
                Center(child: Text('Create Account',
                  style: TextStyle(
                      fontSize: 25,
                      height: 2,
                      color: Colors.blue),
                )),
               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email_rounded),
                      hintText: 'Enter Email',

                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye_outlined),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(),
                      hintText: 'Enter Password',

                    ),
                  ),
                ),

                ElevatedButton(onPressed: (){},
                    child: Text('Create Account')),

              ],

            ),

          ),
        ),
      ),
    );
  }
}
