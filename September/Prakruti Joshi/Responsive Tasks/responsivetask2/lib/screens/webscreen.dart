import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/body.dart';

import 'package:responsivetask2/widgets/drawer.dart';

class DeskScreen extends StatefulWidget {
  const DeskScreen({Key? key}) : super(key: key);

  @override
  _DeskScreenState createState() => _DeskScreenState();
}

class _DeskScreenState extends State<DeskScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Row(
            children: [
              const Expanded(flex: 2, child: drawer()),
              VerticalDivider(
                thickness: 2,
                color: Colors.grey.withOpacity(0.5),
              ),
              const Expanded(flex: 6, child: mainbody())
            ],
          ),
        ));
  }
}
