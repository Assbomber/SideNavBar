import 'package:flutter/material.dart';
import 'package:sidenavbar/sidenavbar.dart';
import 'package:testingsidebar/Examplepage1.dart';

import 'Examplepage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentItem = Examplepage1();
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SideBar(
        backgroundColor: Colors.blueGrey.shade900,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        isCollapsed: isCollapsed,
        currentItem: currentItem,
        navItems: [
          NavItem(
            hoverColor: Colors.red,
            title: Text(
              "Tab 1",
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            isCollapsed: isCollapsed,
            onPressed: () {
              setState(() {
                currentItem = Examplepage1();
              });
            },
          ),
          NavItem(
            hoverColor: Colors.blueAccent,
            title: Text("Tab 2", style: TextStyle(color: Colors.white)),
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            isCollapsed: isCollapsed,
            onPressed: () {
              setState(() {
                currentItem = Examplepage2();
              });
            },
          ),
          CollapseIcon(
            isCollapsed: isCollapsed,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
          )
        ],
      ),
    );
  }
}
