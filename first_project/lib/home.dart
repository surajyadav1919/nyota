import 'package:first_project/1_list.dart';
import 'package:first_project/2_list.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> images = [
   'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
    'https://media.architecturaldigest.com/photos/57c7003fdc03716f7c8289dd/master/pass/IMG%20Worlds%20of%20Adventure%20-%201.jpg',
   'https://iso.500px.com/wp-content/uploads/2015/03/business_cover.jpeg',
    'https://www.apimages.com/Images/Ap_Creative_Stock_Header.jpg',
    'https://cdn.theatlantic.com/media/mt/science/cat_caviar.jpg',
    'https://gratisography.com/wp-content/uploads/2023/01/gratisography-frog-racer-free-stock-photo-800x525.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("your app"),centerTitle: true,
      ),
      body: Column(
                children: [
          Container(
          height: 100,
          child: ListView.builder(
          itemCount: 9,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
               // radius: 25,
                child: Image.network("https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",fit: BoxFit.fill,)

              ),
            );
          },
      ),
        ),
                  Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Center(
                        child: Text(style: TextStyle (
                            fontSize: 30,color: Colors.white),'SURAJ YADAV')),


                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Second_List()));
                  }, child: Text('Next')),
                  // TextButton(onPressed: (){}, child: Text('Next')),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 440,
                        //height: ,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(0,2,0,0),
                        child: GridView.builder(
                          itemCount: images.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 40.0,
                          ),
                          itemBuilder: (BuildContext context, int index){
                            return
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    // radius: 25,
                                    child: Image.network(images[index],fit: BoxFit.fill,)

                                ),
                              );

                          },
                        )
                    ),
                  ),
    ],
      ),


    ));
  }

}
