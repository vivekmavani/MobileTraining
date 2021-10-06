import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsivetask2/screens/webscreen.dart';
import 'package:responsivetask2/screens/homepage.dart';
import 'package:responsivetask2/screens/tabletscreen.dart';
import 'package:responsivetask2/widgets/responsive.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: Responsive(
        mobile: HomePage(),
        tablet: TabScreen(),
        desktop: DeskScreen(),
      ),
    );
  }
}
