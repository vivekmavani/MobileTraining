import 'package:flutter/material.dart';
import 'package:retrofittrial/custom_widget/custom_texts.dart';

class IconwithText extends StatelessWidget {
 // const IconwithText({Key key}) : super(key: key);

  IconwithText({
    required this.icon,
    required this.title,
    this.iconcolor : Colors.blue,
});
  final IconData icon;
  final Color iconcolor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: iconcolor,
        ),
        Container(
          margin: EdgeInsets.only(top: 7),
          child: Texts(
            title: title,
            color: Colors.blue,
            fontsize: 12.0,
          ),
        ),
      ],
    );
  }
}
