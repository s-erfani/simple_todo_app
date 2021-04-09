import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/models/todo_item.dart';
import 'package:simple_todo_app/models/todo_items.dart';

class AddTodoScreen extends StatelessWidget {
  static const routeName = '/add_todo';
  final titleController = TextEditingController();
  final subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TodoItem newTodoItem = TodoItem(title: "", subtitle: "");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          newTodoItem = TodoItem(
              title: titleController.text, subtitle: subtitleController.text);
          Provider.of<TodoItems>(context, listen: false)
              .addTodoItem(newTodoItem);
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: Text('Add New Task'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: "subtitle",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
