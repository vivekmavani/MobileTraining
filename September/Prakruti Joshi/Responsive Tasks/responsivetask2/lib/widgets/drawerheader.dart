import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/textstyle.dart';
import 'package:responsivetask2/model/usermodel.dart';
import 'package:responsivetask2/model/userlist.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 10,
        ),
        CircleAvatar(
          radius: 50,
          backgroundImage: CachedNetworkImageProvider(
            currentUser.imageUrl,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          currentUser.name,
          style: TextThemes.cardtitlestyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Website Designer",
          style: TextThemes.carddescriptionstyle,
        ),
      ],
    );
  }
}
