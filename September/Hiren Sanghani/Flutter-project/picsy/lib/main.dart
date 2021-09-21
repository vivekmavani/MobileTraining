import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picsy',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Image.network(
          'https://www.picsy.in/themes/seablue/images/logo.png',
          height: 40,
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 50,
                height: 30,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.pink[400], primary: Colors.white),
                  child: Text('chat'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: heights * 0.33,
              child: Image.asset('images/share-album.jpg'),
            ),
            SizedBox(
              height: heights * 0.02,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: heights * 0.30,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Image.asset('images/Photobook.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Photo Books',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'From',
                                  ),
                                  Text(' ₹499',
                                      style: TextStyle(color: Colors.pink))
                                ],
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(children: [
                        Text(
                          'Convert photos to printed photobooks',
                          style: TextStyle(color: Colors.pink),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: heights * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: heights * 0.30,
                  width: widths * 0.43,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Image.asset('images/Calendar.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Text('Photo Calendar',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'From',
                                  ),
                                  Text(' ₹500',
                                      style: TextStyle(color: Colors.pink))
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: heights * 0.30,
                  width: widths * 0.43,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Image.asset('images/Photoprint.jpg')),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Photo Print',
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'From',
                                  ),
                                  Text(' ₹160',
                                      style: TextStyle(color: Colors.pink))
                                ],
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: heights * 0.02,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: heights * 0.30,
              child: Card(
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Image.asset('images/Canvas.jpg')),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Canvas Prints',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'From',
                                  ),
                                  Text(' ₹999',
                                      style: TextStyle(color: Colors.pink))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('Photos on canvas for walls',
                              style: TextStyle(color: Colors.pink))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/giftcard.png',
              height: 30,
            ),
            label: 'Gift Card',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/paint.png',
                height: 30,
              ),
              label: 'My Design'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.pink[300],
                size: 30,
              ),
              label: 'My Order'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/galary.png',
                height: 30,
              ),
              label: 'Shared Album'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/user.png',
                height: 30,
              ),
              label: 'Earn Reward'),
        ],
      ),
    );
  }
}
