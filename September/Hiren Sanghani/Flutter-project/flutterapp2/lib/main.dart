import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterclutter:Overflow',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  List<String> itemlist = [
    'Flutter Clutter',
    'Google News',
    'Flutter News',
    'Patavinus',
    'Local News',
    'Travel blog',
    'Ui blog',
    'Imaginary Computer Blog'
  ];
  List<String> itemlist1 = [
    'Internationalization(i18n) in Flutter: a good start',
    'Amazing: Flutter is the most famous arround the world',
    'Flutter now run on SpaceX ships . its amazing.',
    'New version is built with flutter',
    'Flensburg;s beer sales on the rise',
    'Travel industry slow recovers',
    'Study: Most UI elements are too high',
    'Computer are very usefull in this world in office work.'
  ];
  List iconlist = [
    Icons.flutter_dash,
    Icons.settings,
    Icons.computer,
    Icons.access_alarm_rounded,
    Icons.flutter_dash,
    Icons.settings,
    Icons.computer,
    Icons.access_alarm_rounded,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutterclutter:Overflow'),
      ),
      body: Container(
          child: ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: itemlist.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                  leading: Icon(
                    iconlist[index],
                  ),
                  trailing: Text('Just now'),
                  title: Text(
                    itemlist[index],
                  ),
                  subtitle: Text(
                    itemlist1[index],
                    overflow: TextOverflow.ellipsis,
                  ),
                ));
              })),
    );
  }
}
