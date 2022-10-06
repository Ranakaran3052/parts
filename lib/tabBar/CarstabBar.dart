import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CarstabBar extends StatefulWidget {
  const CarstabBar({super.key});

  @override
  State<CarstabBar> createState() => _CarstabBarState();
  
  _CarstabBarState() {}
  
}

class _carsState extends State<CarstabBar> {
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
      color: Colors.blue[300]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 4,
      children: [
        InkWell(
          child: Container(
            child: Center(
              child: Text("tyre", style: TextStyle()),
            ),
          ),
        ),
        InkWell(
          child: Container(
            child: Center(
              child: Text("windsheild", style: TextStyle()),
            ),
          ),
        ),
        InkWell(
          child: Container(
            child: Center(
              child: Text("taillights ", style: TextStyle()),
            ),
          ),
        ),
        InkWell(
          child: Container(
            child: Center(
              child: Text("wrap", style: TextStyle()),
            ),
          ),
        )
      ],
    ));
  }
}
