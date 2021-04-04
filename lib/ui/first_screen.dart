import 'package:flutter/material.dart';
import 'package:simple_todo_app/widgets/todo_item.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Todo App")),
          body: Container(
            child: ListView(
              children: [
                TodoItem(),
                TodoItem(),
                TodoItem(),
              ],
            ),
          )),
    );
  }
}
