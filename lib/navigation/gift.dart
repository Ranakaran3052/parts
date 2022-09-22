import 'package:flutter/material.dart';
import 'dart:html';

class gift extends StatefulWidget {
  const gift({super.key});

  @override
  State<gift> createState() => _giftState();
}

class _giftState extends State<gift> {
  final List<String> name = <String>[
    'vourchers',
    'cards',
    'give-away',
    'chance to win ',
    'contest'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(
                  Icons.card_giftcard,
                  color: Colors.grey,
                  size: 40,
                ),
                title: Text('${name[index]}'),
              );
            }));
  }
}
