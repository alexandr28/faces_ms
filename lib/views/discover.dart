import 'package:flutter/material.dart';
import 'package:face_ms/discover_screens/games.dart' as games;
import 'package:face_ms/discover_screens/business.dart' as business;
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class Discover extends StatefulWidget {
  @override
  DiscoverState createState() {
    return new DiscoverState();
  }
}

class DiscoverState extends State<Discover>
    with SingleTickerProviderStateMixin {
  //int currentPage = 0;

  //PageController _controller = new PageController(initialPage: 1);

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sugerencias",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.0),
        ),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pushNamed(context, '/views/profile'),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/5853361?s=460&v=4"),
              radius: 25.0,
            ),
          ),
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.message,
                  size: 28.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/views/chats');
                }),
            SizedBox(
              width: 40.0,
            ),
            IconButton(
                icon: Icon(
                  Icons.people,
                  //color: Colors.grey,
                  size: 28.0,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/views/people');
                }),
            SizedBox(
              width: 40.0,
            ),
            IconButton(
              icon: Icon(
                Icons.explore,
                size: 28.0,
                //color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 18.0, bottom: 8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.only(top: 8.0, right: 16.0, bottom: 7.0),
              child: Container(
                height: 45.0,
                width: 210.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black12),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Buscar",
                  ),
                ),
              ),
            ),

            new Container(
              width: 200.0,
              child: new TabBar(
                controller: controller,
                indicatorColor: Colors.white,
                indicator: new BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Colors.black12,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,

                ),
                tabs: [
                  new Tab(
                    child: Text(
                      "NEGOCIOS",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "JUEGOS",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              height: 2664.0,
              child: new TabBarView(
                controller: controller,
                children: <Widget>[
                  business.Business(),
                  games.Games(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
