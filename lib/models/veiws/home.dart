import 'dart:core';
import 'dart:html';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:parts/confiq/color.dart';
import 'package:parts/models/veiws/bottomNavigationBar/bottomNavigationBar.dart';
import 'package:parts/models/veiws/drawer/DrawerPages.dart';
import 'package:parts/models/veiws/navigation/homenavigation.dart';
import 'package:parts/models/veiws/navigation/profile.dart';
import 'package:parts/models/veiws/navigation/settings.dart';
import 'bottomNavigationBar/bottomNavigationBar.dart';
import 'package:parts/models/veiws/navigation/gift.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    print("homepage");
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Center(
          child: Text(
            "parts seller",
          ),
        ),
      ),
      
      body: Center(),

      bottomNavigationBar: bottomNAvigationBar(),
    );
  }
}
