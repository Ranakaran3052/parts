import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screen/startuppage.dart';

class homenavigationpage extends StatefulWidget {
  const homenavigationpage({super.key});

  @override
  State<homenavigationpage> createState() => _homenavigationpageState();
}

class _homenavigationpageState extends State<homenavigationpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "hello customer  ",
            style: TextStyle(fontSize: 25, color: Color(0xffA10035)),
            textAlign: TextAlign.center,
          ),
          Text(
            "lets sell the parts ",
            style: TextStyle(fontSize: 20, color: Colors.red[600]),
          ),
          ElevatedButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => startuppage()),
              );
              Icon(Icons.arrow_forward);
            }),
            child: Text("let's go "),
          )
        ],
      ),
    ));
  }
}
