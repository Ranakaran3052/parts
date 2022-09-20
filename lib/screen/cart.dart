import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/confiq/primaryconfig.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("cart"),
        )),
        drawer: primarydrawer,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(100),
            child: Column(
              children: [
                Text("add items to wishlist "),
              ],
            ),
          ),
        ));
  }
}
