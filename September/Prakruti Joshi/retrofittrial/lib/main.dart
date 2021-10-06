import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofittrial/bloc/photobook_bloc.dart';
import 'package:retrofittrial/cubit/photobook_cubit.dart';
import 'package:retrofittrial/screens/photobook.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
        BlocProvider(
          create: (BuildContext context) => PhotobookBloc()..add(PhotobookLoadingevent()),
          child:const HomePage(),
          ),
    );
  }
}

