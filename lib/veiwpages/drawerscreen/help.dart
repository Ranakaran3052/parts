import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class help extends StatefulWidget {
  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    print("help_page");
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("Help & support "),
      )),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.question_answer_rounded),
              title: Text("issue"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("safety & security"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text("chat with us "),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.details),
              title: Text("about us "),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
