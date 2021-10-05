import 'package:flutter/material.dart';
import 'package:responsiveuisecond/partitions/upgardcard.dart';
import 'createdrawerbodyitem.dart';
import 'createdrawerheader.dart';
import 'draweritems.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(context),
         /* createDrawerBodyItem(
            icon: Icons.home,
            text: 'Dashboard',
            onTap: () =>
                Navigator.pushReplacementNamed(context, '/'),
          ),
          createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Courses',
            onTap: () =>
                Navigator.pushReplacementNamed(context, '/courses'),
          ),

          createDrawerBodyItem(
            icon: Icons.event_note,
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
            icon: Icons.contact_phone,
            text: 'Reviews',
            onTap: () =>
                Navigator.pushReplacementNamed(context, '/reviews'),
          ),
          createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'My Settings',
            onTap: () =>
                Navigator.pushReplacementNamed(context, '/mysettings'),
          ),
          createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Log Out',
            onTap: () => {},
          ),*/
          DrawerItems(contextpre: context,),
          UpgradCard(),
        ],
      ),
    );
  }
}
