import 'package:flutter/material.dart';
import 'dart:html';

import 'package:parts/confiq/color.dart';
import 'package:parts/veiws/navigation/giftnavigation/cards.dart';
import 'package:parts/veiws/navigation/giftnavigation/chancetowin.dart';
import 'package:parts/veiws/navigation/giftnavigation/contest.dart';
import 'package:parts/veiws/navigation/giftnavigation/giveaway.dart';

import 'giftnavigation/vouchers.dart';

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
    print(" gift");
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text(' vourcher '),
            onTap: () {
              (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => vouchers()),
                );
              });
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.card_giftcard_sharp),
            title: Text(' cards '),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cards()),
              );
            }),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.handshake),
            title: Text('giveaway '),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => giveaway()),
              );
            }),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text('chance to win  '),
            onLongPress: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chancetowin()),
              );
            }),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.quiz_rounded),
            title: Text('contest'),
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => contest()),
              );
            }),
          ),
        ),
      ],
    ));
  }
}
