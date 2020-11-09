library sidenavbar;

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  Color backgroundColor;
  double sideBarWidth;
  double sideBarCollaspedWidth;

  bool isCollasped;
  Widget currentItem;
  List<Widget> navItems;
  SideBar(
      {this.backgroundColor = Colors.blueGrey,
      @required this.currentItem,
      @required this.navItems,
      @required this.isCollasped,
      this.sideBarCollaspedWidth = 60,
      this.sideBarWidth = 250});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.all(0),
      child: Row(children: [
        Container(
          color: backgroundColor,
          width: isCollasped ? sideBarCollaspedWidth : sideBarWidth,
          child: Column(children: navItems),
        ),
        Expanded(child: currentItem)
      ]),
    );
  }
}

class navItem extends StatelessWidget {
  final Widget title;
  final Widget icon;
  final bool collapse;
  final Function onpressed;
  navItem({this.collapse = false, this.title, this.icon, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: onpressed,
      hoverColor: Colors.blueAccent,
      child: ListTile(
        leading: icon,
        title: collapse ? null : title,
      ),
    );
  }
}

class Collapser extends StatelessWidget {
  Widget icon;
  Function onpressed;
  bool isCollasped;
  Collapser({this.onpressed, this.icon, this.isCollasped});
  var angle = 180 * 3.14 / 180;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: isCollasped ? 180 * 3.14 / 180 : 360 * 3.14 / 180,
        child: IconButton(
          onPressed: onpressed,
          icon: icon,
        ));
  }
}
