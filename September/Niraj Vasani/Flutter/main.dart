import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// for screen 1
// import 'screens/screen1.dart';

// for screen 2
// import 'screens/screen2.dart';

// for screen 3
// import 'screens/screen3.dart';

// for hospital_screen1
// import 'screens/hospital_screen1.dart';

// for hospital_screen2
// import 'screens/hospital_screen2.dart';

// for screen_api_call
import 'screens/screen_api_call.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // for screen 1
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Colors.black,
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    // );

    // for hospital_screen 1 & 2
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Colors.black,
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    // );

    // for screen 2
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Colors.blue.shade800,
    //     statusBarIconBrightness: Brightness.light,
    //   ),
    // );

    // for screen3 & screen_api_call
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.pink.shade400,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // for screen3 & screen_api_call
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      // for hospital_screen2 & 3
      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      // ),

      home: HomeScreen(),
    );
  }
}
