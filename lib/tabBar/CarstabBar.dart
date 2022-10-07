import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarstabBar extends StatelessWidget {
  CarstabBar({super.key});

  final gridStyle = BoxDecoration(
      border: Border.all(color: Colors.black),
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 213, 232, 108),
            offset: Offset(0, 5),
            spreadRadius: 1,
            blurRadius: 5)
      ],
      borderRadius: BorderRadius.circular(10),
      color: Color(0xff003865));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      children: [
        InkWell(
          child: Container(
            decoration: gridStyle,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.two_wheeler_sharp),
                  Text("Tyres",
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: gridStyle,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shield),
                Text("Wndsheild",
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: gridStyle,
            child: Center(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.switch_video_outlined),
                    Text("Taillights ",
                        style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: gridStyle,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wallpaper_sharp),
                  Text("wrap",
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
