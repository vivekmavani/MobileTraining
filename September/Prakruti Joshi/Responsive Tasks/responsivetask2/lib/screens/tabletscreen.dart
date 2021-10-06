import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/drawer.dart';
import 'package:responsivetask2/widgets/body.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
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
                width: 0.0,
                thickness: 2,
                color: Colors.grey.withOpacity(0.5),
              ),
              const Expanded(flex: 3, child: mainbody())
            ],
          ),
        ));
  }
}
