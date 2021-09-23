import 'package:flutter/material.dart';
import '../groupchat/ChatGroupPage.dart';
import '../screens/ChatPage.dart';
import '../status/StatusPage.dart';
import '../userprofile/UserProfile.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: ChatPage(),
      icon: Icon(Icons.message),
      title: Text("Chats"),
    ),
    TabNavigationItem(
      page: ChatGroupPage(),
      icon: Icon(Icons.group_work),
      title: Text("Groups"),
    ),
    TabNavigationItem(
      page: StatusPage(),
      icon: Icon(Icons.book),
      title: Text("Status"),
    ),
    TabNavigationItem(
      page: UserProfile(),
      icon: Icon(Icons.account_box),
      title: Text("Profile"),
    ),
  ];
}
