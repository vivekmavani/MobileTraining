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
      title: 'Flutter clutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutterclutter: Overflow'),
          ) ,
      body: ListView(
        children: [
          ListTile(
            title: Text('Flutter Clutter',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Internationalization (i18n) in Flutter: a...Internationalization (i18n) in Flutter: a...Internationalization (i18n) in Flutter: a...',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('Google News',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Amazing: Flutter is the most famous ....',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('Flutter News',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Flutter now runs on SpaceX ships',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40,),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('Patavinus',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('New version is built with Flutter',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('Local news',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Flensburg\'s beer sales on the rise',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('Travel blog',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Travel industry slowly recovers',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading:FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('UI blog',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Study: Most UI elements are too high',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
          ListTile(
            title: Text('Imaginary Computer Blog',
                style:const TextStyle(fontWeight:FontWeight.bold)),
            subtitle: Text('Imaginary Computer Blog........',
                style: const TextStyle(fontSize: 13.0,fontWeight:FontWeight.bold,color: Colors.black54 ),
              overflow: TextOverflow.ellipsis,
            ),
            leading: FlutterLogo(size: 40),
            trailing: Text('Just now'),
          ),
        ],
      ))
    );
  }
}