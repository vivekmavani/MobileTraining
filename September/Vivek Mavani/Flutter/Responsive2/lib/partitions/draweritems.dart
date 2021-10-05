import 'package:flutter/material.dart';
import 'package:responsiveuisecond/partitions/protag.dart';
import 'package:responsiveuisecond/widget/responsive.dart';

class DrawerItems extends StatefulWidget {
 final BuildContext contextpre;
  const DrawerItems({required this.contextpre, Key? key}) : super(key: key);

  @override
  _DrawerItemsState createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  // ignore: non_constant_identifier_names
  int TappedIndex = 0;


  // ignore: non_constant_identifier_names
  ChangePage(int currentindex) {
    setState(() {
      TappedIndex = currentindex;
      Navigator.pushReplacementNamed(widget.contextpre,  navigate[TappedIndex]);
    });
  }

  List<IconData> icons = [
    Icons.dashboard,
    Icons.article,
    Icons.account_circle,
    Icons.mail,
    Icons.star,
    Icons.settings,
    Icons.logout
  ];
  List<String> title = [
    "Dashboard",
    "Courses",
    "Students",
    "Discussions",
    "Reviews",
    "My Settings",
    "Log Out"
  ];
  List<String> navigate = [
  '/',
  '/courses',
  '/students',
  '/discussions',
  '/reviews',
  '/mysettings',
    '/'
  ];
  List<bool> ispro = [true, false, false, true, true, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: icons.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (contexts, index) {
          return Container(
            decoration: BoxDecoration(
                color: TappedIndex == index ? Colors.indigo : Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(TappedIndex == index ? 18.0 : 0.0))),
            child: ListTile(
              onTap: () {

                ChangePage(index);
              },
              leading: Icon(
                icons[index],
                color: TappedIndex == index
                    ? Colors.white
                    : Colors.grey.withOpacity(0.7),
              ),
              title: Row(
                children: [
                  Text(
                    title[index],
                    style: TextStyle(
                        color: TappedIndex == index
                            ? Colors.white
                            : Colors.indigo.withOpacity(0.7),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  if (ispro[index])
                    if (!Responsive.isTablet(context))
                      ProTag(TappedIndex == index
                          ? Colors.white
                          : Colors.blueAccent.withOpacity(0.1)),
                ],
              ),
            ),
          );
        });
  }
}