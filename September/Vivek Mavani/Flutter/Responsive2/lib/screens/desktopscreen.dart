import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsiveuisecond/custom_widget/custom_texts.dart';
import 'package:responsiveuisecond/partitions/createdrawerbodyitem.dart';
import 'package:responsiveuisecond/partitions/createdrawerheader.dart';
import 'package:responsiveuisecond/partitions/draweritems.dart';
import 'package:responsiveuisecond/partitions/header.dart';
import 'package:responsiveuisecond/partitions/navigationdrawer.dart';
import 'package:responsiveuisecond/partitions/upgardcard.dart';
import 'package:responsiveuisecond/screens/courses.dart';
import 'package:responsiveuisecond/screens/dashboard.dart';
import 'package:responsiveuisecond/screens/discussions.dart';
import 'package:responsiveuisecond/screens/mysettings.dart';
import 'package:responsiveuisecond/screens/reviews.dart';
import 'package:responsiveuisecond/screens/students.dart';
import 'mobilescreen.dart';

class DesktopScreen extends StatefulWidget {
  final String url =
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
final BuildContext contextpre;
  DesktopScreen(this.contextpre);

  @override
  _DesktopScreenState createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 12.0,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              CachedNetworkImageProvider(widget.url),
                          radius: 30.0,
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Texts(
                          title: "Anne Taylor",
                          color: Colors.black87,
                          fontsize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Texts(
                          title: "Website Designer",
                          color: Colors.black87,
                          fontsize: 15.0,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        /*   createDrawerBodyItem(
                           icon: Icons.dashboard,
                           text: 'Dashboard',
                           onTap: () =>
                               Navigator.pushReplacementNamed(context, '/'),
                         ),
                         createDrawerBodyItem(
                           icon: Icons.note,
                           text: 'Courses',
                           onTap: () =>
                               Navigator.pushReplacementNamed(context, '/courses'),
                         ),

                         createDrawerBodyItem(
                           icon: Icons.account_circle,
                           text: 'Students',
                           onTap: () =>
                               Navigator.pushReplacementNamed(context, '/students'),
                         ),
                         createDrawerBodyItem(
                           icon: Icons.notifications_active,
                           text: 'Discussions',
                           onTap: () =>
                               Navigator.pushReplacementNamed(context, '/discussions'),
                         ),
                         createDrawerBodyItem(
                           icon: Icons.star,
                           text: 'Reviews',
                           onTap: () =>
                               Navigator.pushReplacementNamed(context, '/reviews'),
                         ),
                         createDrawerBodyItem(
                           icon: Icons.settings,
                           text: 'My Settings',
                           onTap: () =>
                               Navigator.pushReplacementNamed(context, '/mysettings'),
                         ),
                         createDrawerBodyItem(
                           icon: Icons.logout,
                           text: 'Log Out',
                           onTap: () => {},
                         ),*/
                        DrawerItems(contextpre: widget.contextpre,),
                        const SizedBox(
                          height: 12.0,
                        ),
                        UpgradCard(),
                        /*      Card(
                           color: Colors.orangeAccent.shade50,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(7.0),
                           ),
                      */ /*     child: Row(
                             children: [
                               CircleAvatar(
                                backgroundColor: Colors.orangeAccent,
                                 radius: 20.0,
                               ),
                               Column(
                                 children: [
                                   Texts(title: "Upgrade to Pro", color: Colors.black87,fontsize: 18.0,),
                                   Texts(title: "Learn More", color: Colors.orangeAccent,fontsize: 10.0,),
                                 ],
                               ),
                             ],
                           ),*/ /*
                         ),*/
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.only(right: 20.0),
              child: MobileScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
