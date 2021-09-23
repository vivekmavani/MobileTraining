import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() =>  runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home() 
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.fromLTRB(20.0,24.0,20.0,12.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all( color:Colors.red,width:5),
          borderRadius:BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
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
                )
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('10'),
          ],
        ),
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonColumn(Icons.call, 'CALL'),
        _buttonColumn(Icons.near_me, 'ROUTE'),
        _buttonColumn(Icons.share, 'SHARE'),

      ],
    );

    Widget textSection = Padding(
      padding: EdgeInsets.fromLTRB(32,24,32,32),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4,horizontal: 3),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all( color:Colors.red,width:5),
          borderRadius:BorderRadius.circular(10),
        ),
        child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
        ),
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all( color:Colors.red,width:5),
          borderRadius:BorderRadius.circular(10),
        ),
              child: Image.asset(
                'images/photo.jpg',
                height: 240,
                width: 600,
                fit: BoxFit.fill,
              ),
            ),
            titleSection,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64.0,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all( color:Colors.red,width:5),
                borderRadius:BorderRadius.circular(10),
              ),
              child:buttonSection,
              ),
            ),
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buttonColumn( IconData iconData, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: Colors.blue),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}