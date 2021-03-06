import 'package:flutter/material.dart';

enum TabItem{
  jobs,
  entries,
  account
}
class TabItemData{
  final String title;
  final IconData icon;

  const TabItemData({required this.title, required this.icon});

  static const Map<TabItem,TabItemData>alltabs = {
    TabItem.jobs : TabItemData(title:  'Jobs',icon:Icons.work),
    TabItem.entries : TabItemData(title:  'Entries',icon:Icons.view_headline),
    TabItem.account : TabItemData(title:  'Account',icon:Icons.person),
  };
}