import 'package:example/ExamplePage1.dart';
import 'package:flutter/material.dart';
import 'package:sidenavbar/sidenavbar.dart';

import 'ExamplePage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCollasped = false;
  Widget currentItem = ExamplePage1();

  void show(Widget item) {
    setState(() {
      currentItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SideBar(
        isCollasped: isCollasped,
        currentItem: currentItem,
        navItems: [
          navItem(
            collapse: isCollasped,
            title: Text("Tab 1"),
            icon: Icon(Icons.person),
            onpressed: () {
              show(ExamplePage1());
            },
          ),
          navItem(
            collapse: isCollasped,
            title: Text("Tab 1"),
            icon: Icon(Icons.person),
            onpressed: () {
              show(ExamplePage2());
            },
          ),
          Collapser(
            isCollasped: isCollasped,
            icon: Icon(Icons.arrow_back),
            onpressed: () {
              setState(() {
                isCollasped = !isCollasped;
              });
            },
          )
        ],
      ),
    );
  }
}
