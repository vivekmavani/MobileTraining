import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/constants.dart';
import 'package:responsivetask2/widgets/responsive.dart';
import 'package:responsivetask2/widgets/textstyle.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              (Responsive.isDesktop(context) ? desktoppadding : defaultpadding),
          vertical: 20),
      //padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          if (Responsive.isMobile(context))
            Container(
              decoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(0.1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8)),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu, color: Colors.blueAccent)),
            ),
          if (Responsive.isMobile(context))
            const SizedBox(
              width: 10,
            ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search course,student,review,etc",
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: (Responsive.isDesktop(context) ? 8 : 0)),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                  Responsive.isDesktop(context) ? 15 : 100),
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter,
                      color: Colors.redAccent,
                    )),
                if (Responsive.isDesktop(context))
                  const Text(
                    "Filters",
                    style: TextThemes.carddescriptionstyle,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
