import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Flutter app'),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.menu)],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                'images/nature.png',
                width: 600,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100, bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'images/hospi.jpeg',
                      width: 200,
                      height: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  Container(
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 110,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    primary: Colors.black),
                                onPressed: () {},
                                child: Text(
                                  'Button1',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 110,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    primary: Colors.black),
                                onPressed: () {},
                                child: Text(
                                  'Button2',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 110,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    primary: Colors.black),
                                child: Text(
                                  'Button3',
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 60,
                                width: 110,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      primary: Colors.black),
                                  child: Text(
                                    'Button4',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                                width: 110,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      primary: Colors.black),
                                  child: Text(
                                    'Button5',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                                width: 110,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      primary: Colors.black),
                                  child: Text(
                                    'Button6',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                size: 25,
                color: Colors.blue,
              ),
              label: 'call'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map_outlined,
                size: 25,
                color: Colors.blue,
              ),
              label: 'map'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_membership,
                size: 25,
                color: Colors.blue,
              ),
              label: 'card membership'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add_outlined,
                size: 25,
                color: Colors.blue,
              ),
              label: 'notification'),
        ],
      ),
    );
  }
}
