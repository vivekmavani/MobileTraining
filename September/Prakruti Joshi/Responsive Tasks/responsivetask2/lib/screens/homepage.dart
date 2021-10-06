import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/drawer.dart';
import 'package:responsivetask2/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(),
      body: mainbody(),
    ));
  }
}
