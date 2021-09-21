import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firstapp',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Firstapp'),
          ),
          body: Column(children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 5),
              ),
              child: Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 5),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    Container(
                        child: Row(children: [
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      const Text('41'),
                    ]))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(40, 5, 40, 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 5),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                        const Text(
                          'CALL',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.near_me,
                          color: Colors.blue,
                        ),
                        const Text(
                          'ROUTE',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        const Text(
                          'SHARE',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 5),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
              ),
            )
          ])),
    );
  }
}
