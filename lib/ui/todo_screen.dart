import 'package:flutter/material.dart';
import 'package:simple_todo_app/ui/done_tasks_screen.dart';
import 'package:simple_todo_app/widgets/todo_item.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, DoneTasksScreen.routeName),
              icon: Icon(Icons.playlist_add_check_rounded))
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, i) {
            return TodoItem();
          },
        ),
      ),
    );
  }
}
