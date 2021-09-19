import 'package:flutter/material.dart';

class Screenlist extends StatelessWidget {
  const Screenlist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterclutter: Overview'),
      ),
      body: Listofdata(),
    );
  }
}

class Listofdata extends StatelessWidget {
  const Listofdata({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _Cardlist(
            Icons.map, 'Flutter Clutter', 'Intermationelization IN flutter'),
        _Cardlist(
            Icons.icecream, 'Google News', 'Amazing : Flutter is the most famous'),
        _Cardlist(
            Icons.ac_unit, 'Flutter News', 'Flutter Now runs on SpaceX ships'),
        _Cardlist(Icons.shop, 'Patavinus', 'New version is bulit in flutter'),
        _Cardlist(Icons.local_airport_sharp, 'Local News', 'beer sales on the store'),
      ],
    );
  }
}

Widget _Cardlist(IconData iconData, String title, String subtitle) => Card(
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
        subtitle: Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text('just now'),
      ),
    );
