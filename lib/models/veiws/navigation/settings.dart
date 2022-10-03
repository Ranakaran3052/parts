import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  final textStyle = TextStyle(
    fontSize: 20,
    color: Colors.white70,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    fontFamily: "Poppins",
  );

  final gridStyle = BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 130, 125, 125)),
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 109, 178, 234),
            offset: Offset(0, 5),
            spreadRadius: 1,
            blurRadius: 5)
      ],
      borderRadius: BorderRadius.circular(10.10),
      color: Color(0xff000000));

  @override
  Widget build(BuildContext context) {
    print("settings");
    return Container(
        child: GridView.count(
            padding: EdgeInsets.all(30),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
          Container(
            decoration: gridStyle,
            child: Center(
              child: Text("Profile", style: textStyle),
            ),
          ),
          Container(
            decoration: gridStyle,
            child: Center(
                child: Text('network & contectivity ', style: textStyle)),
          ),
          Container(
            decoration: gridStyle,
            child: Center(child: Text(' notification ', style: textStyle)),
          ),
          Container(
            decoration: gridStyle,
            child: Center(child: Text(' password ', style: textStyle)),
          ),
          Container(
            decoration: gridStyle,
            child: Center(
                child: Center(child: Text(' backup ', style: textStyle))),
          ),
          Container(
            decoration: gridStyle,
            child: Center(
              child: Text(
                ' restore data  ',
                style: textStyle,
              ),
            ),
          ),
          Container(
            decoration: gridStyle,
            child: Center(
              child: Text(
                " logout ",
                style: textStyle,
              ),
            ),
          )
        ]));
  }
}
