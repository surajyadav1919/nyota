// import 'package:flutter/material.dart';

// class View extends StatefulWidget {
//   const View({super.key});

//   @override
//   State<View> createState() => _ViewState();
// }

// class _ViewState extends State<View> {
//   List<TextEditingController> _nameControllers = [];
//   List<TextField> _nameFields = [];
//   List<TextEditingController> _telControllers = [];
//   List<TextField> _telFields = [];
//   List<TextEditingController> _addressControllers = [];
//   List<TextField> _addressFields = [];
//   final name = _nameControllers[1].text;
// final tel = _telControllers[1].text;
// final address = _addressControllers[1].text;
// @override
// void dispose() {
//   for (final controller in _nameControllers) {
//     controller.dispose();
//   }
//   for (final controller in _telControllers) {
//     controller.dispose();
//   }
//   for (final controller in _addressControllers) {
//     controller.dispose();
//   }
//   _okController.dispose();
//   super.dispose();
// }
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: ListTile(
//     title: Icon(Icons.add),
//     onTap: () {
//       final name = TextEditingController();
//       final tel = TextEditingController();
//       final address = TextEditingController();

//       final nameField = _generateTextField(name, "name");
//       final telField = _generateTextField(tel, "mobile");
//       final addressField = _generateTextField(address, "address");

//       setState(() {
//         _nameControllers.add(name);
//         _telControllers.add(tel);
//         _addressControllers.add(address);
//         _nameFields.add(nameField);
//         _telFields.add(telField);
//         _addressFields.add(addressField);
//       });
//     },
//   );
// }

// TextField _generateTextField(TextEditingController controller, String hint) {
//   return TextField(
//     controller: controller,
//     decoration: InputDecoration(
//       border: OutlineInputBorder(),
//       labelText: hint,
//     ),
//   );
//   }
//   Widget _listView() {
//   final children = [
//     for (var i = 0; i < _nameControllers.length; i++)
//       Container(
//         margin: EdgeInsets.all(5),
//         child: InputDecorator(
//           child: Column(
//             children: [
//               _nameFields[i],
//               _telFields[i],
//               _addressFields[i],
//             ],
//           ),
//           decoration: InputDecoration(
//             labelText: i.toString(),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//           ),
//         ),
//       )
//   ];
//   return SingleChildScrollView(
//     child: Column(
//       children: children,
//     ),
//   );
// }
//   final _okController = TextEditingController();
//   Widget _okButton(BuildContext context) {
//     final textField = TextField(
//       controller: _okController,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(),
//       ),
//     );

//     final button = ElevatedButton(
//       onPressed: () async {
//         final index = int.parse(_okController.text);
//         String text = "name: ${_nameControllers[index].text}\n" +
//             "tel: ${_telControllers[index].text}\n" +
//             "address: ${_addressControllers[index].text}";
//         await showMessage(context, text, "Result");
//       },
//       child: Text("OK"),
//     );

//     return Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Container(
//           child: textField,
//           width: 100,
//           height: 50,
//         ),
//         button,
//       ],
//     );
//   }
//   Widget _addTile() {
//   return ListTile(
//     title: Icon(Icons.add),
//     onTap: () {
//       final group = _GroupControllers();

//       final nameField = _generateTextField(group.name, "name");
//       final telField = _generateTextField(group.tel, "mobile");
//       final addressField = _generateTextField(group.address, "address");

//       setState(() {
//         _groupControllers.add(group);
//         _nameFields.add(nameField);
//         _telFields.add(telField);
//         _addressFields.add(addressField);
//       });
//     },
//   );
// }
// final button = ElevatedButton(
//   onPressed: () async {
//     final index = int.parse(_okController.text);
//     String text = "name: ${_groupControllers[index].name.text}\n" +
//         "tel: ${_groupControllers[index].tel.text}\n" +
//         "address: ${_groupControllers[index].address.text}\n";
//     await showMessage(context, text, "Result");
//   },
//   child: Text("OK"),
// );
 
// }

//  class _GroupControllers {
//   TextEditingController name = TextEditingController();
//   TextEditingController tel = TextEditingController();
//   TextEditingController address = TextEditingController();
//   void dispose() {
//     name.dispose();
//     tel.dispose();
//     address.dispose();
//   }
// }