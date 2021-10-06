import 'package:flutter/material.dart';
import 'package:responsiveuisecond/model/competition.dart';
import 'package:responsiveuisecond/model/courseprogress.dart';
import 'package:responsiveuisecond/partitions/header.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsiveuisecond/partitions/navigationdrawer.dart';
import 'package:responsiveuisecond/custom_widget/custom_texts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:responsiveuisecond/widget/responsive.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isMobile(context) == true ? Header() : null,
      drawer: Responsive.isMobile(context) == true ? NavigationDrawer() : null,
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(top : Responsive.isMobile(context) == true ? 0.0 :12.0),
            padding:  EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Responsive.isMobile(context) == true ?   SizedBox(
              height: 12.0,
            ) :  Row(
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
                        child:  Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.filter_alt_sharp, color: Colors.black87),
                              SizedBox(
                                width: 10.0,
                              ),
                              Texts(title: 'Filter', color: Colors.black87,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Texts(
                  title: 'Course Progress',
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontsize: 20.0,
                ),
                SizedBox(
                  height: 12.0,
                ),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: courseprogresslist.length,
                  /*  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context) == true
                          ? 2
                          : 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      // childAspectRatio: (1 / 1),
                    ),*/
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (Responsive.isDesktop(context) ? 4 : 2),
                        crossAxisSpacing: (Responsive.isDesktop(context) ? 25 : 8),
                        mainAxisSpacing: 8.0,
                        childAspectRatio: (Responsive.isDesktop(context) ? 1.2 : 1) /
                            (Responsive.isDesktop(context) ? 1.4 : 1.2)
                      // devicewidth /(deviceheight * (Responsive.isMobile(context) ? 0.65 : 1.5))
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: courseprogresslist[index].cardcolor,
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: CircularPercentIndicator(
                                    radius: 100.0,
                                    //_keyRed.currentContext!.size!.height / 20,
                                    lineWidth: 7.0,
                                    animation: true,
                                    animationDuration: 1200,
                                    percent:
                                        courseprogresslist[index].progress /
                                            100,
                                    center: Texts(
                                      fontsize: 20.0,
                                      color: courseprogresslist[index].color,
                                      title:
                                          "${courseprogresslist[index].progress}%",
                                      fontWeight: FontWeight.bold,
                                    ),
                                    progressColor:
                                        courseprogresslist[index].color,
                                    backgroundColor: courseprogresslist[index].color.withOpacity(0.3),
                                  ),
                                ),
                                // SizedBox(height: 12.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Texts(
                                      color: Colors.black87,
                                      title: courseprogresslist[index].title,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    Texts(
                                      color: courseprogresslist[index].color,
                                      title:
                                          "${courseprogresslist[index].numberofvidoes} videos",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 12.0,
                ),
                Texts(
                  title: 'Ongoing Competitions',
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontsize: 20.0,
                ),
                SizedBox(
                  height: 12.0,
                ),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: competitionlist.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (Responsive.isDesktop(context) ? 2 : 1),
                        crossAxisSpacing: (Responsive.isDesktop(context) ? 25 : 8),
                        mainAxisSpacing: 15.0,
                        childAspectRatio: (!Responsive.isMobile(context) ? 1.7 : 1.3) /
                            (Responsive.isTablet(context) ? 1.2 : 1)
                      // devicewidth /(deviceheight * (Responsive.isMobile(context) ? 0.65 : 1.5))
                    ),

                    /*gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context) == true
                          ? 1
                          : 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: (2 / 1),
                    ),*/
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.lightBlue.shade50,
                          clipBehavior: Clip.hardEdge,
                          child: Container(
                            padding: EdgeInsets.all(12.0),
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Texts(
                                    color: Colors.black87,
                                    title: competitionlist[index].title,
                                    fontWeight: FontWeight.bold,
                                  ),

                                  Texts(
                                    color: Colors.grey,
                                    title: competitionlist[index].price,
                                  ),

                                  Texts(
                                    color: Colors.black87,
                                    title: competitionlist[index].desc,
                                  ),

                                  Texts(
                                    color: Colors.black87,
                                    title: 'Participants',
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                     Row(
                                       children: [
                                         Row(
                                           children: List.generate(competitionlist[index].participants.length <= 5 ? competitionlist[index].participants.length
                                               : 5, (indexs) =>
                                               CircleAvatar(
                                                 backgroundImage: CachedNetworkImageProvider(competitionlist[index].participants[indexs].imageUrl),
                                                 radius: 15.0,
                                               ),
                                           ),
                                         ),
                                         Visibility(
                                           visible: competitionlist[index].participants.length <= 5 ? false : true,
                                           child: CircleAvatar(
                                             backgroundColor: Colors.indigo,
                                             child: Center(child: Texts(color: Colors.white, title: "${competitionlist[index].participants.length-5}+")),
                                             radius: 15.0,
                                           ),
                                         ),
                                       ],
                                     ),
                                      Visibility(
                                        visible: competitionlist[index].joinbutton,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('JOIN EVENT'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // SizedBox(height: 12.0,),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
