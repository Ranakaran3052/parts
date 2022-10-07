import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BicycleTabbar extends StatelessWidget {
   BicycleTabbar({super.key});
  
   final gridStyle = BoxDecoration(
      border: Border.all(color: Colors.black),
      boxShadow: [
        BoxShadow(
            color: Color(0xffFFCACA),
            offset: Offset(0, 5),
            spreadRadius: 1,
            blurRadius: 5)
      ],
      borderRadius: BorderRadius.circular(10),
      color: Colors.yellow[100]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        padding: EdgeInsets.all(20),
        children: [
          InkWell(
            child: Container(
              decoration: gridStyle,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_bike_sharp),
                    Text(
                      "Handle",
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
    ]) );
  }
}
