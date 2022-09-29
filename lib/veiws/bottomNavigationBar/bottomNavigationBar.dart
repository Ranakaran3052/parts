import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/confiq/color.dart';
import 'package:parts/veiws/drawer/DrawerPages.dart';

import '../navigation/gift.dart';
import '../navigation/homenavigation.dart';
import '../navigation/profile.dart';
import '../navigation/settings.dart';

class bottomNAvigationBar extends StatefulWidget {
  bottomNAvigationBar({super.key});

  @override
  State<bottomNAvigationBar> createState() => _bottomNAvigationBarState();
}

class _bottomNAvigationBarState extends State<bottomNAvigationBar> {
  get mainAxisAlignment => null;
  int _currentIndex = 0;

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
    return Scaffold(
      appBar: primarybar,
      drawer: DrawerPage(),
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

class _currentIndex {}
