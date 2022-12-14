// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:parts/models/veiws/screen/buy.dart';
import 'package:parts/models/veiws/screen/sell.dart';

class startuppage extends StatelessWidget {
  final style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final List<String> entries = <String>[
    'buy',
  ];

  final List<int> colorCodes = <int>[400];

  get navigationbar2 => null;

  @override
  Widget build(BuildContext context) {
    print(" startup_page");
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("parts seller"),
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
                  SizedBox(
                    width: 180,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => buy()),
                        );
                      },
                      child: Text(
                        "lets buy   something ",
                        style: style,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: 180,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          // ignore: prefer_const_constructors
                          MaterialPageRoute(builder: (context) => sell()),
                        );
                        // ignore: prefer_const_constructors
                      },
                      child: Text(
                        "lets sale  something ",
                        style: style,
                      ),
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
