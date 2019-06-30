import 'package:flutter/material.dart';
import 'views/chats.dart';
import 'views/people.dart';
import 'views/profile.dart';
import 'views/discover.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/views/chats': (BuildContext context) => Chats(),
        '/views/people': (BuildContext context) => People(),
        '/views/discover': (BuildContext context) => Discover(),
        '/views/profile': (BuildContext context) => Profile(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chats(),
    );
  }
}