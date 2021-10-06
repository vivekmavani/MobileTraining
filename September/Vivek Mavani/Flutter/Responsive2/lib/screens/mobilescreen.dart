import 'package:flutter/material.dart';
import 'package:responsiveuisecond/screens/discussions.dart';
import 'package:responsiveuisecond/screens/mysettings.dart';
import 'package:responsiveuisecond/screens/reviews.dart';
import 'package:responsiveuisecond/screens/students.dart';
import 'package:responsiveuisecond/screens/courses.dart';
import 'package:responsiveuisecond/screens/dashboard.dart';
class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes:  {
        '/': (context) =>  Dashboard(),
        '/courses': (context) =>  Courses(),
        '/students': (context) =>  Students(),
        '/discussions': (context) =>  Discussions(),
        '/reviews': (context) =>  Reviews(),
        '/mysettings': (context) =>  Mysettings(),
      },
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}