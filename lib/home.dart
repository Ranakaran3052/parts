import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/confiq/primaryconfig.dart';
import 'package:parts/screen/startuppage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  get mainAxisAlignment => null;

// homepage

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("parts seller"),
          ),
        ),

        //drawer
        drawer: Drawer(
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
                        border:
                            Border.all(color: Color.fromARGB(255, 0, 56, 139))),
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
        ),

//body
//bood

        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "hello customer  ",
                  style: TextStyle(fontSize: 25, color: Color(0xffA10035)),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "lets sell the parts ",
                  style: TextStyle(fontSize: 20, color: Colors.red[600]),
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => startuppage()),
                    );
                    Icon(Icons.arrow_forward);
                  }),
                  child: Text("let's go "),
                )
              ],
            ),
          ),
        ));

    // bottomNavigationBar:
    //     BottomNavigationBar(items: const <BottomNavigationBarItem>[
    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.home),
    //     label: 'Home',
    //   )
    // ]));
  }
}
