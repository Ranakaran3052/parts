import 'package:flutter/material.dart';

import 'package:parts/veiws/screen/cart.dart';

class buy extends StatefulWidget {
  const buy({super.key});

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  @override
  Widget build(BuildContext context) {
    print("buy_page");
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
