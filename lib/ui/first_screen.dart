import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Todo App")),
        body: Center(
          child: Text("hi"),
        ),
      ),
    );
  }
}
