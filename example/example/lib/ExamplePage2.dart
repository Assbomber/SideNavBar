import 'package:flutter/material.dart';

class ExamplePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ExamplePage2"),
      ),
      body: Center(
        child: Text("This is the content for page 2"),
      ),
    );
  }
}
