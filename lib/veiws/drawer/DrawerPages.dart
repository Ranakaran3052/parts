import 'package:flutter/material.dart';
import 'package:parts/confiq/color.dart';

import 'package:parts/veiws/drawer/drawerscreen/help.dart';
import 'package:parts/veiws/navigation/profile.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("drawer_page");
    return Drawer(
      backgroundColor: primarybackground,
      child: ListView(
        padding: EdgeInsets.all(20),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'asset/images/me.jpeg.png',
                ),
                radius: 50,
              ),
            ],
          ),
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
