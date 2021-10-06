
import 'package:flutter/material.dart';

class Header extends StatelessWidget  implements PreferredSizeWidget{
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:  IconThemeData(color: Colors.black87),
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:  [
                    Icon(Icons.search, color: Colors.black87),
                    Expanded(child: Text("Search course, students, review etc.",style: TextStyle(overflow: TextOverflow.ellipsis),)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.blue.shade50,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.filter_alt_sharp, color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
