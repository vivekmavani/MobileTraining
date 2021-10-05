import 'package:flutter/material.dart';
import 'package:responsiveuisecond/partitions/header.dart';
import 'package:responsiveuisecond/partitions/navigationDrawer.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is Reviews page")));
  }
}
