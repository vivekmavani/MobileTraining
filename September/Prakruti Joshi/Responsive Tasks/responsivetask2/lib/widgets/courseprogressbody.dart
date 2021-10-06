import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsivetask2/model/datas.dart';
import 'package:responsivetask2/widgets/constants.dart';
import 'package:responsivetask2/widgets/responsive.dart';
import 'package:responsivetask2/widgets/textstyle.dart';

class CourseProgress extends StatelessWidget {
  const CourseProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal:
              (Responsive.isDesktop(context) ? desktoppadding : defaultpadding),
          vertical: defaultpadding),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (Responsive.isDesktop(context) ? 4 : 2),
              crossAxisSpacing: (Responsive.isDesktop(context) ? 25 : 8),
              mainAxisSpacing: 8.0,
              childAspectRatio: (Responsive.isDesktop(context) ? 1.2 : 1) /
                  (Responsive.isDesktop(context) ? 1.4 : 1.2)
              ),
          itemCount: carditems.length,
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: carditems[index].colorvalue.withOpacity(0.5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 100,
                      lineWidth: 8.0,
                      animation: true,
                      percent: carditems[index].percent / 100,
                      center: Text(
                        "${carditems[index].percent.toString()}%",
                        style: TextStyle(
                            color: carditems[index].colorvalue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      backgroundColor: carditems[index].colorvalue.withOpacity(0.1),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: carditems[index].colorvalue,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carditems[index].title,
                          style: TextThemes.cardtitlestyle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${carditems[index].videos.toString()} Videos",
                          style: TextStyle(color: carditems[index].colorvalue),
                        ),
                      ],
                    )
                  ],
                ));
          }),
    );
  }
}
