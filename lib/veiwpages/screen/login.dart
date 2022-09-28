import 'package:flutter/material.dart';

import 'package:parts/veiwpages/confiq/primaryconfig.dart';
import 'package:parts/veiwpages/drawer/DrawerPages.dart';

class log_in extends StatefulWidget {
  const log_in({super.key});

  @override
  State<log_in> createState() => _log_inState();
}

class _log_inState extends State<log_in> {
  @override
  Widget build(BuildContext context) {
    print("login_page");
    return Scaffold(
      appBar: primarybar,
      drawer: DrawerPage(),
      body: Container(child: Center(child: Text('plz login first'))),
    );
  }
}
