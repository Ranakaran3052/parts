import 'dart:core';
import 'dart:html';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:parts/confiq/color.dart';
import 'package:parts/veiws/drawer/DrawerPages.dart';
import 'package:parts/veiws/navigation/homenavigation.dart';
import 'package:parts/veiws/navigation/profile.dart';
import 'package:parts/veiws/navigation/settings.dart';

import 'package:parts/veiws/navigation/gift.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get mainAxisAlignment => null;
  int _currentIndex = 1;

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
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xff4C6793),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            backgroundColor: Color(0xff829460),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'gift',
            backgroundColor: Color(0xffD8D8D8),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color(0xffFFABE1),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
