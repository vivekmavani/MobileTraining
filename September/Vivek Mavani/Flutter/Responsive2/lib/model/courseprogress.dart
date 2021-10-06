import 'package:flutter/material.dart';

class Courseprogress{
  final String title;
  final int progress;
  final int numberofvidoes;
  final Color color;
  final Color cardcolor;

  Courseprogress(this.title, this.progress, this.numberofvidoes,this.color,this.cardcolor);
}

List<Courseprogress> courseprogresslist = [
  Courseprogress("HTML5 Design",50,140,Colors.purple,Colors.purple.withOpacity(0.3)),
  Courseprogress("UI/UX Design",68,847,Colors.blue,Colors.blue.withOpacity(0.3)),
  Courseprogress("Copywriting",25,21,Colors.red,Colors.red.withOpacity(0.3)),
  Courseprogress("Mobile Apps",32,535,Colors.orange,Colors.orange.withOpacity(0.3)),
];