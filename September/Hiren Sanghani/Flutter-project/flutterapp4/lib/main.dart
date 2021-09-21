import 'dart:ui';

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
  List<String> listitem = [
    'item1',
    'item2',
    'item3',
    'item4',
    'item5',
    'item6',
    'item7',
    'item8',
    'item9',
    'item10',
    'item11',
    'item12',
    'item13',
    'item14',
    'item15',
    'item16',
    'item17',
    'item18',
    'item19',
    'item20',
    'item21',
    'item22',
    'item23',
    'item24',
    'item25',
    'item26',
    'item27',
    'item28',
    'item29',
    'item30',
    'item31',
    'item32',
    'item33',
    'item34',
    'item35',
    'item36',
    'item37',
    'item38',
    'item39',
    'item40'
  ];
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search), color: Colors.black)
          ],
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Image.asset(
                    'images/nature.png',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'images/hospi.jpeg',
                          width: 200,
                          height: 100,
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      height: screenheight * 0.65,
                      child: ListView.builder(
                        itemCount: listitem.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 10),
                                  child: Text(
                                    listitem[index],
                                    style: TextStyle(fontSize: 20),
                                  )),
                              const Divider(
                                color: Colors.black12,
                                height: 20,
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              )
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
