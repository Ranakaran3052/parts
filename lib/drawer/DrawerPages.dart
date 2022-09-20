import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../confiq/primaryconfig.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue[500],
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Center(
              child: DrawerHeader(
            child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10),
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
            title: Text("profile"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_center),
            title: Text(" help"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("refer "),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),
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