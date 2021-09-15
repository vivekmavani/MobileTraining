import 'package:flutter/material.dart';

class Dateninetasktwo extends StatelessWidget {
  const Dateninetasktwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List iteam = [
      'Phoenix Wiggins',
      'Natasha Lester',
      'Karley Rocha',
      'Mackenzie Macias',
      'Brogan Hood',
      'Prince Chung'
          'Natasha Lester',
      'Christopher Small',
      'Karley Rocha',
      'Zayne Solis',
      'Mackenzie Macias',
      'Mariela Lewis',
      'Brogan Hood',
      'Ansley Powers'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back.png"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.4), BlendMode.dstATop),
          ),
        ),
        child: ListView(
          children: [
            Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  child: FittedBox(
                    child: Image.asset('assets/appicon.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Card(
                    elevation: 2.0,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: EdgeInsets.only(bottom: 12.0),
                    child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) => const Divider(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      // Let the ListView know how many items it needs to build.
                      itemCount: iteam.length,
                      // Provide a builder function. This is where the magic happens.
                      // Convert each item into a widget based on the type of item it is.
                      itemBuilder: (context, index) {
                        final item = iteam[index];
                        return Padding(
                          padding:
                          index==0? EdgeInsets.only(top: 12.0,left: 12.0,right: 12.0):EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 12.0),
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                item,
                                style: TextStyle(color: index==0? Colors.indigo:Colors.black),
                                overflow: TextOverflow.ellipsis,
                              )),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
