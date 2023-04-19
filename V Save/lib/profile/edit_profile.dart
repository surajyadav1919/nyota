import 'package:flutter/material.dart';
import 'package:vsave/profile/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController Username = TextEditingController();
  TextEditingController Bio = TextEditingController();
  TextEditingController Url = TextEditingController();
  TextEditingController intialdateval = TextEditingController();

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (picked != null) {
      setState(
        () => {
          intialdateval.text = "${picked.day}/${picked.month}/${picked.year}",
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(
                      name: Username.text,
                      bio: Bio.text,
                      website: Url.text,
                      date: intialdateval.text,
                    ),
                  ),
                );
              },
              child: const Text(
                "Save",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                TextFormField(
                  controller: Username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    hintText: 'Enter a Username',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: Bio,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.details),
                    border: OutlineInputBorder(),
                    hintText: 'Bio',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: Url,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.web),
                    border: OutlineInputBorder(),
                    hintText: 'Website Url',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  readOnly: true,
                  // focusNode: _focusNode,
                  keyboardType: TextInputType.phone,
                  autocorrect: false,
                  controller: intialdateval,
                  onSaved: (value) {
                    //  data.registrationdate = value;
                  },
                  onTap: () {
                    _selectDate();
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  maxLines: 1,
                  //initialValue: 'Aseem Wangoo',
                  validator: (value) {
                    if (value!.isEmpty || value.isEmpty) {
                      return 'Choose Date';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Date',
                    //filled: true,
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.calendar_today),
                    labelStyle:
                        TextStyle(decorationStyle: TextDecorationStyle.solid),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
