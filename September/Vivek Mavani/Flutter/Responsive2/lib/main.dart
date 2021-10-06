import 'package:flutter/material.dart';
import 'package:responsiveuisecond/screens/courses.dart';
import 'package:responsiveuisecond/screens/dashboard.dart';
import 'package:responsiveuisecond/screens/desktopscreen.dart';
import 'package:responsiveuisecond/screens/discussions.dart';
import 'package:responsiveuisecond/screens/mobilescreen.dart';
import 'package:responsiveuisecond/screens/mysettings.dart';
import 'package:responsiveuisecond/screens/reviews.dart';
import 'package:responsiveuisecond/screens/students.dart';
import 'package:responsiveuisecond/widget/responsive.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
     /* initialRoute: '/',
      routes:  {
        '/': (context) => const Dashboard(),
        '/courses': (context) => const Courses(),
        '/students': (context) => const Students(),
        '/discussions': (context) => const Discussions(),
        '/reviews': (context) => const Reviews(),
        '/mysettings': (context) => const Mysettings(),
      },*/
      //const MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(title: 'abc',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(desktop: DesktopScreen(context),mobile: MobileScreen(),tablet: DesktopScreen(context)),
    );
    /*MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Responsive(desktop: DesktopScreen(),mobile: MobileScreen(),tablet: DesktopScreen()),
    );*/
  }
}
