import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
Widget createDrawerHeader(BuildContext context) {
 final String url = 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(url),
          radius: 50.0,
        ),
        const SizedBox(height: 6.0,),
        Text("Anne Taylor", style: Theme.of(context).textTheme.headline6,),
        const SizedBox(height: 6.0,),
        const Text("Website Designer",),
      ],
    ),
  );
}
