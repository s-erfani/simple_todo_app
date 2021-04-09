import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/models/todo_item.dart';
import 'package:simple_todo_app/models/todo_items.dart';

class EditItemScreen extends StatelessWidget {
  static const routeName = '/edit_item';
  final titleController = TextEditingController();
  final subtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TodoItem todoItem = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          Provider.of<TodoItems>(context, listen: false).editTodoItem(
              todoItem.id,
              TodoItem(
                  title: titleController.text,
                  subtitle: subtitleController.text));
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: Text("title item"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: todoItem.title,
                labelText: "title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: subtitleController,
              decoration: InputDecoration(
                hintText: todoItem.subtitle,
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
