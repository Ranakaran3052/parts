import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BiketabBar extends StatelessWidget {
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
      color: Color(0xff395B64));
  final textstyle = TextStyle(
      fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.w600);

  BiketabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 5,
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            onTap: (() {}),
            child: Container(
              decoration: gridStyle,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_bike_sharp),
                    Text(
                      "Handle",
                      style: textstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              decoration: gridStyle,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.two_wheeler_sharp),
                    Text(
                      "tyre",
                      style: textstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              decoration: gridStyle,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.event_seat_outlined),
                    Text(
                      "seat",
                      style: textstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              decoration: gridStyle,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_bike_outlined),
                    Text(
                      "headlights",
                      style: textstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              decoration: gridStyle,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.gps_not_fixed_sharp),
                    Text(
                      "chain",
                      style: textstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
