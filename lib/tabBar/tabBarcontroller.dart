import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp._title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_bike_sharp),
              ),
              Tab(
                icon: Icon(Icons.directions_car_filled_sharp),
              ),
              Tab(
                icon: Icon(Icons.pedal_bike),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("shop bike parts"),
            ),
            Center(
              child: Text(" cars parts"),
            ),
            Center(
              child: Text(" cycle parts"),
            ),
          ],
        ),
      ),
    );
  }
}
