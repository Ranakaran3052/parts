import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parts/confiq/primaryconfig.dart';
import 'package:parts/drawer/DrawerPages.dart';

import 'package:parts/screen/cart.dart';

class buy extends StatefulWidget {
  const buy({super.key});

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("buy "),
        actions: [
          IconButton(
            icon: Icon(Icons.stroller),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
          )
        ],
      ),
      body: Container(child: Center(child: Text("get start"))),
    );

    ;
  }
}
