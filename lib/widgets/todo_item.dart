import 'package:flutter/material.dart';
import 'package:simple_todo_app/ui/edit_item_screen.dart';

class TodoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text("hello"),
          subtitle: Text("im subtitle"),
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
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
