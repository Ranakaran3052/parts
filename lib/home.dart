import 'dart:core';
import 'dart:html';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:parts/veiwpages/drawer/DrawerPages.dart';
import 'package:parts/veiwpages/navigation/homenavigation.dart';
import 'package:parts/veiwpages/navigation/profile.dart';
import 'package:parts/veiwpages/navigation/settings.dart';

import 'package:parts/veiwpages/navigation/gift.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get mainAxisAlignment => null;
  int _currentIndex = 1;
  //final List = [];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static var _widgetOptions = <Widget>[
    homenavigationpage(),
    profile(),
    gift(),
    settings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override

// homepage
  @override
  Widget build(BuildContext context) {
    print("homepage");
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Center(
          child: Text(
            "parts seller",
            style: TextStyle(fontFamily: 'Poppins'),
          ),
        ),
      ),

//body

      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'gift',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
