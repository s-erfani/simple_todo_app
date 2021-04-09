import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/models/done_tasks.dart';
import 'package:simple_todo_app/models/todo_item.dart';
import 'package:simple_todo_app/models/todo_items.dart';
import 'package:simple_todo_app/ui/edit_item_screen.dart';

class TodoItemCard extends StatelessWidget {
  final int id;
  final String title;
  final String subtitle;

  TodoItemCard({this.id, this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed(context, EditItemScreen.routeName);
                },
              ),
              IconButton(
                icon: Icon(Icons.done_outline_rounded),
                onPressed: () {
                  Provider.of<DoneTasks>(context, listen: false)
                      .addToDone(TodoItem(title: title, subtitle: subtitle));
                  print(id);
                  Provider.of<TodoItems>(context, listen: false)
                      .removeFromList(id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
