import 'package:flutter/material.dart';
import 'package:layoutbasic/screens/makenewpage.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Title',
      theme: ThemeData(
       primarySwatch: Colors.pink,
      ),
      home: MakenewPage(),

    );
  }
}


