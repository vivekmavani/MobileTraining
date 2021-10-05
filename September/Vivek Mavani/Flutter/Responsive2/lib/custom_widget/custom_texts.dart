import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
// const Texts({Key? key}) : super(key: key);
  Texts({
   required this.title,
    required this.color,
     this.fontsize : 15.0,
    this.fontWeight :  FontWeight.normal,
    this.overflow : TextOverflow.visible,
  });

  final String title;
  final double fontsize;
  final Color color;
  final FontWeight fontWeight;
  final TextOverflow overflow;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
        overflow: overflow
      ),
    );
  }
}
