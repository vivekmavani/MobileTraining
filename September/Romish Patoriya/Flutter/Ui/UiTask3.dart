import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
            appBar: AppBar(

              backgroundColor: Colors.white,
              elevation: 0,
              leading: const Icon(
                Icons.keyboard_backspace,
                color: Colors.purple,
              ),
              actions: [
                Icon(
                  Icons.search,
                  color: Colors.purple,
                )
              ],
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.home_work_sharp,
                              color: Colors.black38,
                              size: 40,
                            ),
                            Text(
                              'Children\'s hospital'.toUpperCase(),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.purple),
                            ),
                            Text(
                              '& research center foundation'.toUpperCase(),
                              style:
                                  TextStyle(fontSize: 10, color: Colors.purple),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Card(
                    elevation: 3,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: index == 0
                                  ? EdgeInsets.only(top: 10)
                                  : EdgeInsets.zero,
                              child: ListTile(
                                title: Text(
                                  list[index],
                                  style: TextStyle(
                                    letterSpacing: 0.1,
                                      color: index == 0
                                          ? Colors.purple
                                          : Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Divider(
                                thickness: 1,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

List<String> list = [
  'Abdominal Pain - Female',
  'Abdominal Pain - Male',
  'Acne',
  'Animal or Human Bite',
  'Antibiotics: When Do They Help',
  'Arm Injury',
  'Arm Pain',
  'Asthma Attack',
  'Athlete\'s Foot',
  'Arm Injury'
];