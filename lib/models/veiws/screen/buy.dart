import 'dart:html';

import 'package:flutter/material.dart';

import 'package:parts/models/veiws/screen/cart.dart';
import 'package:parts/tabBar/BicycleTabbar.dart';
import 'package:parts/tabBar/BiketabBar.dart';
import 'package:parts/tabBar/CarstabBar.dart';

class buy extends StatefulWidget {
  const buy({super.key});

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  @override
  Widget build(BuildContext context) {
    print("buy_page");
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
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
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.directions_bike_sharp),
                ),
                Tab(
                  icon: Icon(Icons.directions_car_filled_sharp),
                ),
                Tab(
                  icon: Icon(Icons.pedal_bike),
                )
              ])),
          body: TabBarView(
            children: <Widget>[
              BiketabBar(),
              CarstabBar(),
              BicycleTabbar(),
            ],
          ),
        ));
  }
}
