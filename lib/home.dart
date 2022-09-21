import 'dart:core';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/confiq/primaryconfig.dart';
import 'package:parts/navigation/homenavigation.dart';
import 'package:parts/navigation/profile.dart';
import 'package:parts/navigation/settings.dart';

import 'package:parts/screen/startuppage.dart';

import 'drawer/DrawerPages.dart';
import 'navigation/gift.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get mainAxisAlignment => null;
  int _currentIndex = 0;
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
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Center(
          child: Text("parts seller"),
        ),
      ),

//body

      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      // Center(
      //   child: Container(
      //     margin: EdgeInsets.all(10),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Text(
      //           "hello customer  ",
      //           style: TextStyle(fontSize: 25, color: Color(0xffA10035)),
      //           textAlign: TextAlign.center,
      //         ),
      //         Text(
      //           "lets sell the parts ",
      //           style: TextStyle(fontSize: 20, color: Colors.red[600]),
      //         ),
      //         ElevatedButton(
      //           onPressed: (() {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(builder: (context) => startuppage()),
      //             );
      //             Icon(Icons.arrow_forward);
      //           }),
      //           child: Text("let's go "),
      //         )
      //       ],
      //     ),
      //   ),
      // ),

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
