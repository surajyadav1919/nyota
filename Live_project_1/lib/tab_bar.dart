import 'package:flutter/material.dart';

class TabBAR extends StatefulWidget {
  const TabBAR({Key? key}) : super(key: key);

  @override
  State<TabBAR> createState() => _TabBARState();
}

class _TabBARState extends State<TabBAR> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this,initialIndex: 1);

    return Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color(0xff008069),
          bottom: TabBar(
            // indicator: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            controller: tabController,
            indicatorColor: Colors.white,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 25),

            tabs: [
              Tab(icon: Icon(Icons.groups)),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],

          ),
          actions: [
            Container(
              height: 50,
              width: 144,
              // color: Colors.red,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                ],
              ),
            )
          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Color(0xff008069),
          child: Icon(Icons.message),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(child: Text('THIS IS GROUP')),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('SURAJ'),
                      subtitle: Text('hii'),
                      leading: CircleAvatar(
                        child: Image.network(
                            'https://yt3.googleusercontent.com/lIPNc8GD8282Q5VG9_4TZ9A0MRCQcXJItc09-dwk25wjgDPUDBrcqUDsuOBHfyWriYLiktZwSQ=s900-c-k-c0x00ffffff-no-rj'),
                      ),
                      trailing: Text('Today'),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('SURAJ'),
                      subtitle: Text('hii'),
                      leading: CircleAvatar(
                        child: Image.network(
                            'https://yt3.googleusercontent.com/lIPNc8GD8282Q5VG9_4TZ9A0MRCQcXJItc09-dwk25wjgDPUDBrcqUDsuOBHfyWriYLiktZwSQ=s900-c-k-c0x00ffffff-no-rj'),
                      ),
                      trailing: Text('Today'),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('SURAJ'),
                      subtitle: Text('hii'),
                      leading: CircleAvatar(
                        child: Image.network(
                            'https://yt3.googleusercontent.com/lIPNc8GD8282Q5VG9_4TZ9A0MRCQcXJItc09-dwk25wjgDPUDBrcqUDsuOBHfyWriYLiktZwSQ=s900-c-k-c0x00ffffff-no-rj'),
                      ),
                      trailing: Container(
                        height: 40,
                        width: 100,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),

                          ],
                        ),
                      )
                    ),
                  );
                }),
          ],
        )

    );
  }

}
