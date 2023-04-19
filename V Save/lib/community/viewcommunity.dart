import 'package:flutter/material.dart';
import 'package:flutter_simple_multiselect/flutter_simple_multiselect.dart';
import 'package:vsave/community/community.dart';
import 'package:vsave/community/communityparticular.dart';

class viewcommunity extends StatefulWidget {
  const viewcommunity({super.key});

  @override
  State<viewcommunity> createState() => _viewcommunityState();
}

class _viewcommunityState extends State<viewcommunity> {
  late Color lineColor = const Color.fromARGB(9, 51, 57, 148);
  List selectedItems = [];
  List selectedItemsAsync = [];
  Map? singleItem;
  bool isLoading = false;

  List<Map<String, dynamic>> testData = [
    {"uuid": 1, "name": "Car Rental"},
    {"uuid": 2, "name": "Car Buy"},
    {"uuid": 3, "name": "Old Model"},
    {"uuid": 4, "name": "Super Car"},
    {"uuid": 5, "name": "Fashion Car"}
  ];

  Future<List<Map<String, dynamic>>> searchFunction(query) async {
    return testData.where((element) {
      return element["name"].toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  Future<List<Map<String, dynamic>>> searchFunctionAsync(query) async {
    return Future.delayed(const Duration(seconds: 1), () {
      return testData.where((element) {
        return element["name"].toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          title: const Text(
            'Topics',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  (MaterialPageRoute(
                    builder: (context) => const Community(),
                  )),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(
                      0.5,
                    ),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Make community",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Following",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Not instered",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      "The Topics you follow are used to personalize the Tweets,events,and ads that you see, and show up publicly on your profile",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Car Rental by Devesh",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Super Cars",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.5),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Ronaldo",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Budget Cars",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.5),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Following",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                (MaterialPageRoute(
                                  builder: (Context) => const Viewcommunity(),
                                )),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Amabani",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Old Model Car",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue.withOpacity(0.5),
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          20,
                                        ),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Following",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Car",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "Modifier",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.5),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Following",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      "Suggested Topics",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      "You'll see top Posts about these Car posts in your Home timeline",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 30,
                    ),
                    child: _asyncData(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                    ),
                    child: Text(
                      "More Topics",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                    ),
                    child: Text(
                      "Follow more for To get brillant ofer on your Dashboard.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Text(
                "There is no Communities there",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _asyncData() {
    return FlutterMultiselect(
        autofocus: false,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        enableBorderColor: lineColor,
        focusedBorderColor: lineColor,
        borderRadius: 5,
        borderSize: 3,
        resetTextOnSubmitted: true,
        minTextFieldWidth: 300,
        suggestionsBoxMaxHeight: 300,
        length: selectedItemsAsync.length,
        isLoading: isLoading,
        tagBuilder: (context, index) => SelectTag(
          index: index,
          label: selectedItemsAsync[index]["name"],
          onDeleted: (value) {
            selectedItemsAsync.removeAt(index);
            setState(() {});
          },
        ),
        suggestionBuilder: (context, state, data) {
          var existingIndex = selectedItemsAsync
              .indexWhere((element) => element["uuid"] == data["uuid"]);
          var selectedData = data;
          return Material(
              child: ListTile(
                  selected: existingIndex >= 0,
                  trailing: existingIndex >= 0 ? const Icon(Icons.check) : null,
                  selectedColor: Colors.white,
                  selectedTileColor: Colors.blue.withOpacity(0.5),
                  title: Text(selectedData["name"].toString()),
                  onTap: () {
                    var existingIndex = selectedItemsAsync.indexWhere(
                            (element) => element["uuid"] == data["uuid"]);
                    if (existingIndex >= 0) {
                      selectedItemsAsync.removeAt(existingIndex);
                    } else {
                      selectedItemsAsync.add(data);
                    }

                    state.selectAndClose(data);
                    setState(() {});
                  }));
        },
        suggestionsBoxElevation: 10,
        findSuggestions: (String query) async {
          setState(() {
            isLoading = true;
          });
          var data = await searchFunctionAsync(query);
          setState(() {
            isLoading = false;
          });
          return data;
        });
  }
}

class SelectTag extends StatelessWidget {
  const SelectTag({
    super.key,
    required this.label,
    required this.onDeleted,
    required this.index,
  });

  final String label;
  final ValueChanged<int> onDeleted;
  final int index;
  final Color darkAlias6 = const Color.fromRGBO(36, 37, 51, 0.06);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: darkAlias6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      avatar: const CircleAvatar(),
      deleteIcon: const Icon(
        Icons.close,
        size: 18,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}