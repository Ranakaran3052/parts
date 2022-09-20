import 'package:flutter/material.dart';
import 'package:parts/home.dart';
import 'package:parts/screen/login.dart';
//import 'package:parts/startuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home:
          // log_in()
          //startuppage()
          MyHomePage(),
    );
  }
}