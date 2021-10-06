import 'package:flutter/cupertino.dart';
import 'package:responsivetask2/widgets/constants.dart';
import 'package:flutter/material.dart';

abstract class TextThemes {
  static const TextStyle cardtitlestyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: defaultcolor);

  static const TextStyle homepagetilestyle =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: defaultcolor);

  static const TextStyle carddescriptionstyle = TextStyle(
      fontWeight: FontWeight.w600, color: subtitlecolor, fontSize: 15);

  static const TextStyle cardpriceparticipantesstyle = TextStyle(
      color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500);
}
