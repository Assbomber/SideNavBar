import 'package:flutter/material.dart';

class ExamplePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("ExamplePage1"),
      ),
      body: Center(
        child: Text("This is the content for page 1"),
      ),
    );
  }
}
