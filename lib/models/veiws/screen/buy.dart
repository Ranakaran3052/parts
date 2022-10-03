import 'package:flutter/material.dart';

import 'package:parts/models/veiws/screen/cart.dart';

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
            icon: Icon(Icons.shopping_basket),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
          )
        ],
        bottom: Tab(),
      ) ,
      // Bottom : TabBar(tabs: [],),
   
      

      body: Container(child: Center(child: Text("get start"))),
    );

    ;
  }
}
