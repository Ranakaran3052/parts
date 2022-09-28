import 'package:flutter/material.dart';

import 'package:parts/veiwpages/drawerscreen/help.dart';
import 'package:parts/veiwpages/navigation/profile.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("drawer_page");
    return Drawer(
      backgroundColor: Colors.blue[500],
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
              child: DrawerHeader(
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color.fromARGB(255, 0, 56, 139))),
                child: Container(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    "hello sir ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 233, 34, 34),
                        wordSpacing: 6),
                  ),
                )),
          )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.help_center),
            title: Text(" Help"),
            onTap: () {
              // help();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => help()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Refer "),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("logout"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
