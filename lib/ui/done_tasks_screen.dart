import 'package:flutter/material.dart';

class DoneTasksScreen extends StatelessWidget {
  static const routeName = "/done_tasks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Done Tasks"),
      ),
    );
  }
}
