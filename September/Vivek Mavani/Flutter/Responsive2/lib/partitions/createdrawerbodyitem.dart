

import 'package:flutter/material.dart';
import 'package:responsiveuisecond/custom_widget/custom_texts.dart';

Widget createDrawerBodyItem(
    {required IconData icon, required String text, required GestureTapCallback onTap}) {
  return Card(
    clipBehavior: Clip.hardEdge,
    color: Colors.indigo,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon,color: Colors.white,),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Texts( title: text, color: Colors.white,),
                Card(
                  clipBehavior: Clip.hardEdge,
                  color: Colors.lightBlue.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Texts( title: "PRO", color: Colors.indigo,fontsize: 10.0,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      onTap: onTap,
    ),
  );
}