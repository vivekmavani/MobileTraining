import 'package:flutter/material.dart';
import 'package:responsivetask2/widgets/drawerheader.dart';
import 'package:responsivetask2/widgets/drawerlist.dart';
import 'package:responsivetask2/widgets/upgrad.dart';
import 'package:responsivetask2/widgets/responsive.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: Drawer(
        elevation: 0.0,
        child: Container(
          margin: EdgeInsets.only(
              left: (!Responsive.isMobile(context) ? 8 : 20),
              right: (!Responsive.isMobile(context) ? 8 : 20)),
          child: ListView(
            children: [
              const CustomDrawerHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.blueAccent.withOpacity(0.5),
                ),
              ),
              const DrawerItems(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (Responsive.isDesktop(context) ? 25 : 5)),
                child: const UpgradCard(),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
