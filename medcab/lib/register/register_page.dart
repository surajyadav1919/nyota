import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:medcab/register/profile.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xffb9324a),
        centerTitle: true,
        title: Text("Registration as Medcab's Driver Partner",style: TextStyle(fontSize: 15),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             EasyStepper(
               activeStepIconColor: Color(0xff06cf9c),
               activeStepBorderColor:Colors.grey,
               activeStepBorderType: BorderType.normal,
               activeLineColor: Colors.grey,
               unreachedStepBorderType: BorderType.normal,
               unreachedStepBackgroundColor: Colors.black12,
               unreachedStepBorderColor: Colors.black12,
               unreachedStepIconColor: Colors.black26,
               unreachedLineColor: Colors.grey,
               finishedStepBackgroundColor: Color(0xff00a884),
               finishedLineColor: Color(0xff00a884),
               showLoadingAnimation: false,
               // enableStepTapping: false,
               activeStep: activeStep,
               lineLength: 25,
               stepRadius: 20,
               lineType: LineType.normal,
               borderThickness: 2,
               // loadingAnimation: ,
               steps: [
                 EasyStep(
                   icon: Icon(Icons.perm_identity,),
                   ),
                 EasyStep(
                   icon: Icon(CupertinoIcons.doc_person),

                 ),
                 EasyStep(
                   icon: Icon(CupertinoIcons.person_add),
                 ),
                 EasyStep(
                   icon: Icon(CupertinoIcons.car_detailed),
                 ),
                 EasyStep(
                   icon: Icon(Icons.add_box_outlined),
                 ),
               ],
               onStepReached: (index) {
                 print(index);
                 setState(() => activeStep = index);
               },
             ),
            [
              Profile(),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
            ][activeStep],
          ],
        ),
      ),
    );
  }
}
