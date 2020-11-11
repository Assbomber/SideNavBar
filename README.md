### SideNavBar
![Screenshot](https://github.com/Assbomber/SideNavBar/blob/main/screen-capture%20(1).gif?raw=true)

This flutter package helps you create web styled side navigation. Its short and easy to use.

# How to use

### 1) Installation

1. Depend on it
Add this to your package's pubspec.yaml file:

```sh
dependencies:
  sidenavbar: ^0.0.2
```

2. Install it
You can install packages from the command line:

with Flutter:

```sh
$ flutter pub get
```
Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

3. Import it
Now in your Dart code, you can use:
```sh
import 'package:sidenavbar/sidenavbar.dart';
```
### 2) Usage

Recommend to use directly under ```home ``` property of your ```MaterialApp()```.
Here are some properties it takes:
**\* marked are required property**
| (Type) Property name | Does what |
| ------ | ------ |
| * (bool) ```isCollapsed``` | Accepts boolean to make the Side navigation bar aware when to collapse and when to expand. |
| (Color) ```backgroundColor``` | Sets background color for side navigation bar. Default is set to ```Colors.blueGrey``` |
| (CrossAxisAlignment) ```crossAxisAlignment``` | Aligns the navigator elements horizontally. Default is set to ```CrossAxisAlignment.center``` |
| (MainAxisAlignment) ```mainAxisAlignment```  | Aligns the navigator elements vertically. Default is set to  ```MainAxisAlignment.start``` |
| * (Widget) ```currentItem``` | Accepts a widget and lets the Side nav bar know about current performing widget |
| * (List<Widget>) navItems | Accepts a List of widgets that act as items for Side nav bar. |

```sh
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
```
**\* Important: Yes ```navItems``` can have any type of widget, but for collapsing to work properly try to use ```NavItem()``` widget or if you still want to go with your choice of widget try to use boolean ```isCollapsed``` to let the navigator know what to collapse and what to keep.**
**example:**
```sh
ListTile(
leading: Icon(Icons.call),
title: isCollapsed ? null : Text("When not Collapsed"),
)
```

License
----

MIT

