import 'package:flutter/material.dart';
import 'package:responsiveuisecond/custom_widget/custom_texts.dart';

class ProTag extends StatelessWidget {
  final colorvalue;
  const ProTag(this.colorvalue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.hardEdge,
      color: Colors.lightBlue.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Texts( title: "PRO", color: Colors.indigo,fontsize: 10.0,),
      ),
    );

    /*  Container(
      decoration: BoxDecoration(
          color: colorvalue,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        child: Text(
          "Pro",
          style:
          TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w600),
        ),
      ),
    );*/
  }
}