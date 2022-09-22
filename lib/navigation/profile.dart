import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: "Poppins");
  //grid style
  final gridStyle = BoxDecoration(
      border: Border.all(color: Colors.black),
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 109, 178, 234),
            offset: Offset(0, 5),
            spreadRadius: 1,
            blurRadius: 5)
      ],
      borderRadius: BorderRadius.circular(10),
      color: Colors.blue[300]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: true,
        padding: EdgeInsets.all(30),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            decoration: gridStyle,

            // padding: EdgeInsets.all(8),
            child: Center(
              child: Text("Profile", style: textStyle),
            ),
          ),
          Container(
            decoration: gridStyle,
            // padding: const EdgeInsets.all(8),
            //color: Colors.teal[200],
            child: Center(child: Text('your order', style: textStyle)),
          ),
          Container(
            decoration: gridStyle,
            // padding: const EdgeInsets.all(8),
            // color: Colors.teal[300],
            child: Center(child: Text('buy again ', style: textStyle)),
          ),
          Container(
            decoration: gridStyle,
            // padding: const EdgeInsets.all(8),
            // color: Colors.teal[400],
            child: Center(child: Text(' your wishlist ', style: textStyle)),
          ),
          Container(
            decoration: gridStyle,
            // padding: const EdgeInsets.all(8),
            // color: Colors.teal[500],
            child: Center(
                child:
                    Center(child: Text('login security ', style: textStyle))),
          ),
          Container(
            decoration: gridStyle,
            // padding: const EdgeInsets.all(8),
            // color: Colors.teal[600],
            child: Center(
              child: Text(
                'your address ',
                style: textStyle,
              ),
            ),
          ),
          Container(
            decoration: gridStyle,
            child: Text(
              " buy again ",
              style: textStyle,
            ),
          )
        ],
      ),
    );
  }
}
