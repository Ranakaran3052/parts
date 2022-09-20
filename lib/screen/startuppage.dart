import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/screen/buy.dart';
import 'package:parts/confiq/primaryconfig.dart';
import 'package:parts/screen/sell.dart';

class startuppage extends StatefulWidget {
  const startuppage({super.key});

  @override
  State<startuppage> createState() => _startuppageState();
}

class _startuppageState extends State<startuppage> {
  final List<String> entries = <String>[
    'buy',
  ];
  final List<int> colorCodes = <int>[400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("parts seller"),
        ),
      ),
      drawer: Drawer(
        backgroundColor: primarycolor,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Center(
                child: DrawerHeader(
              child: DecoratedBox(
                  child: Text(
                    "hello sir ",
                    style: TextStyle(
                        fontSize: 35, color: Colors.red, wordSpacing: 6),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade300,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.yellowAccent))),
            ))
          ],
        ),
      ),

// body
//body
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(100),
              child: Column(
                children: [
                  new SizedBox(
                    width: 180,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => buy()),
                        );
                      },
                      child: Text("lets buy   something "),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  new SizedBox(
                    width: 180,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sell()),
                        );
                        // ignore: prefer_const_constructors
                      },
                      child: Text("lets sale  something "),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
