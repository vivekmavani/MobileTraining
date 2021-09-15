import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layoutbasic/custom_widget/custom_iconwithtext.dart';
import 'package:layoutbasic/custom_widget/custom_texts.dart';
import 'package:layoutbasic/screens/date9tasktwo.dart';
import 'package:layoutbasic/screens/picsyhomepage.dart';
import 'package:layoutbasic/screens/screenlist.dart';

import 'date9task.dart';

class MakenewPage extends StatelessWidget {
  const MakenewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Dateninetasktwo();
    //return Dateninetaskone();
     return Picsyhomepage();
   // return Screenlist();
    //return _Screen1();
  }
}



class _Screen1 extends StatelessWidget {
  const _Screen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.red, width: 5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FittedBox(
                      child: Image.asset('assets/image1.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                _Firstblock(),
                _Secondblock(),
                _Thirdblock(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Firstblock extends StatelessWidget {
  const _Firstblock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0,32.0,8.0,8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all( color:Colors.red,width:5),
          borderRadius:BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts(
                        title: 'Oeschinen Lake Campground',
                        color: Colors.black87,
                        fontsize: 12.0,
                        fontWeight: FontWeight.bold),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Texts(
                        title: 'Kandersteg, Switzeriand',
                        color: Colors.grey,
                        fontsize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              Texts(title: '41', color: Colors.black87, fontsize: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _Secondblock extends StatelessWidget {
  const _Secondblock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all( color:Colors.red,width:5),
          borderRadius:BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconwithText(icon: Icons.phone, title: 'CALL'),
              IconwithText(icon: Icons.near_me, title: 'ROUTE'),
              IconwithText(icon: Icons.share, title: 'SHARE'),
            ],
          ),
        ),
      ),
    );
  }
}

class _Thirdblock extends StatelessWidget {
  const _Thirdblock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all( color:Colors.red,width:5),
          borderRadius:BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Texts(
            title:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
            fontsize: 12.0,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
