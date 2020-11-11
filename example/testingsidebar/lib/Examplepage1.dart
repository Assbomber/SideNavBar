import 'package:flutter/material.dart';

class Examplepage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("AppBar page 1"),
      ),
      body: Center(
        child: Text("Example content 1"),
      ),
    );
  }
}
