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
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(
              Icons.keyboard_backspace,
            ),
            actions: const [
              Icon(
                Icons.more_vert,
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.home_work_sharp,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          'Children\'s hospital'.toUpperCase(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          '& research center foundation'.toUpperCase(),
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 80),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _textSet('Sick ?', 'office info'),
                        _textSet('About us', 'page My \n Doctor'),
                        _textSet('news', 'portal'),
                      ],
                    ),
                  )
                ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 0,
            currentIndex: 3,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.blue,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.call, 1),
                label: 'Call',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.map, 2),
                label: 'Location',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.credit_card_outlined, 3),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.notifications_none_outlined, 4),
                label: 'Notification',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textSet(String text1, String text2) => Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: raisedButtonStyle,
          onPressed: () {},
          child: Text(
            text1.toUpperCase(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextButton(
          style: raisedButtonStyle,
          onPressed: () {},
          child: Text(
            text2.toUpperCase(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.purple,
  primary: Colors.white,
  fixedSize: Size(100, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
);

Widget _buildIcon(IconData iconData, int index) => Container(
      width: double.infinity,
      height: kBottomNavigationBarHeight,
      child: Material(
        color: _getBgColor(index),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
            ),
          ],
        ),
      ),
    );

Color _getBgColor(int index) => 4 == index ? Colors.blue : Colors.white;