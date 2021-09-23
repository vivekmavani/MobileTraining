import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'picsy',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          /*leading: Icon(
              Icons.menu,
              color: Colors.black87,
            ),*/
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Image.asset(
            'images/picsy.jpg',
            height: 40,
          ),
          actions: [
            const Icon(
              Icons.notifications_none_outlined,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    fixedSize: const Size(15, 8),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'chat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.more_vert,
            ),
          ],
        ),
        body: Center(
          child: ListView(
            children: [
              Image.network('https://www.picsy.in/images/app/New-Dashboard/share-album.jpg',),
              _bigImage('https://www.picsy.in/images/app/New-App/dashboard/Photobook.jpg', 'Photo Books', '499',
                  'Convert photos to printed photo books'),
              _twoImage(context, 'https://www.picsy.in/images/app/New-App/dashboard/Calendar.jpg', 'Photo Calendar', '500',
                  'https://www.picsy.in/images/app/New-App/dashboard/Photoprint.jpg', 'Photo Print', '499'),
              _bigImage(
                  'https://www.picsy.in/images/app/New-App/dashboard/Canvas.jpg'
                  , 'Canvas Prints', '999',
                  'Photos on canvas for walls'),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          items: <BottomNavigationBarItem>[
            _bottomItem(context,
                'https://s3.ap-south-1.amazonaws.com/picsyinlive/images/user_photos/8350/large/USER_PHOTOS_8350_20210326_152637_8098.png',
                'Gift Card'),
            _bottomItem(context,
                'https://s3.ap-south-1.amazonaws.com/picsyinlive/images/user_photos/8350/large/USER_PHOTOS_8350_20210326_152624_79307.png',
                'My Designs'),
            _bottomItem(context,
                'https://s3.ap-south-1.amazonaws.com/picsyinlive/images/user_photos/8350/large/USER_PHOTOS_8350_20210326_152656_47415.png',
                'My Orders'),
            _bottomItem(context,
                'https://s3.ap-south-1.amazonaws.com/picsyinlive/images/user_photos/8350/large/USER_PHOTOS_8350_20210326_152724_1190.png',
                'Shared Albums'),
            _bottomItem(context,
                'https://s3.ap-south-1.amazonaws.com/picsyinlive/images/user_photos/8350/large/USER_PHOTOS_8350_20210326_152712_80995.png',
                'Earn rewards')
          ],
        ),
      ),
    );
  }
}

BottomNavigationBarItem _bottomItem(BuildContext context,String image, String label) =>
    BottomNavigationBarItem(
        icon: Image.network(
          image,
          width:30,
        ),
        label: label);

Widget _bigImage(
        String url, String title, String price, String description) =>
    Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(url),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                'From ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Text(
                                '\u{20B9}' + price,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    children: [
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.pink,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

Widget _twoImage(BuildContext context,String url,String title,String price,String url2,String title2,String price2,)=>
    Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  url,width: MediaQuery.of(context).size.width/2-20,
                  //width: MediaQuery.of(context).size.width/2 - 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children:  [
                            Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          children: [
                            Text('From '),
                            Text(
                              '\u{20B9}'+price,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  url2,
                  width: MediaQuery.of(context).size.width/2 - 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              title2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          children: [
                            const Text('From '),
                            Text(
                              '\u{20B9}'+price2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );