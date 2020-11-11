library sidenavbar;

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final Color backgroundColor;
  final double sideBarWidth;
  final double sideBarCollapsedWidth;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final bool isCollapsed;
  final Widget currentItem;
  final List<Widget> navItems;
  SideBar(
      {this.backgroundColor = Colors.blueGrey,
      @required this.currentItem,
      @required this.navItems,
      @required this.isCollapsed,
      this.crossAxisAlignment,
      this.mainAxisAlignment,
      this.sideBarCollapsedWidth = 60,
      this.sideBarWidth = 250});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.all(0),
      child: Row(children: [
        Container(
          color: backgroundColor,
          width: isCollapsed ? sideBarCollapsedWidth : sideBarWidth,
          child: Column(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: navItems),
        ),
        Expanded(child: currentItem)
      ]),
    );
  }
}

class NavItem extends StatelessWidget {
  final Color hoverColor;
  final Widget title;
  final Widget icon;
  final bool isCollapsed;
  final Function onPressed;
  NavItem(
      {this.isCollapsed,
      @required this.title,
      @required this.icon,
      this.onPressed,
      this.hoverColor});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
      hoverColor: hoverColor,
      child: ListTile(
        leading: icon,
        title: isCollapsed ? null : title,
      ),
    );
  }
}

class CollapseIcon extends StatelessWidget {
  final Widget icon;
  final Function onPressed;
  final bool isCollapsed;
  CollapseIcon({this.onPressed, this.icon, this.isCollapsed});
  final double angle = 180 * 3.14 / 180;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: isCollapsed ? 180 * 3.14 / 180 : 360 * 3.14 / 180,
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ));
  }
}
