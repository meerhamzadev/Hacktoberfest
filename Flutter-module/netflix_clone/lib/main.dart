import 'package:flutter/material.dart';
import 'package:netflix_clone/homedetailspage.dart';
import 'package:netflix_clone/mainpage.dart';
import 'package:netflix_clone/routes/routes.dart';
import 'package:netflix_clone/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        routes.start: (context) => StartPage(),
        routes.home: (context) => MainPage(),
        routes.homedetail: (context) => HomeDetailPage(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
