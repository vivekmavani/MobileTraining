import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/competionscards.dart';
import 'package:responsivetask2/widgets/courseprogressbody.dart';
import 'package:responsivetask2/widgets/appbar.dart';
import 'package:responsivetask2/widgets/constants.dart';
import 'package:responsivetask2/widgets/responsive.dart';
import 'package:responsivetask2/widgets/textstyle.dart';

class mainbody extends StatelessWidget {
  const mainbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: (Responsive.isDesktop(context)
                  ? desktoppadding
                  : defaultpadding)),
          child: const Text(
            "Courses Progress",
            style: TextThemes.homepagetilestyle,
          ),
        ),
        const CourseProgress(), //gridview
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: (Responsive.isDesktop(context) ? 40 : 12),
              vertical: 12),
          child: const Text(
            "Ongoing Competitions",
            style: TextThemes.homepagetilestyle,
          ),
        ),
        const CompetitionsBody(),
      ],
    );
  }
}
