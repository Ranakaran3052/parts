import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/confiq/primaryconfig.dart';

class sell extends StatefulWidget {
  const sell({super.key});

  @override
  State<sell> createState() => _sellState();
}

class _sellState extends State<sell> {
  get navigationbar2 => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: primarybar,
      // body: GridView.count(crossAxisCount: crossAxisCount)
    );
    // ignore: dead_code

    ;
  }
}
