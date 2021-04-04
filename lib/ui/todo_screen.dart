import 'package:flutter/material.dart';
import 'package:simple_todo_app/widgets/todo_item.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo App")),
      body: Container(
        child: ListView(
          children: [
            TodoItem(),
            TodoItem(),
            TodoItem(),
          ],
        ),
      ),
    );
  }
}
