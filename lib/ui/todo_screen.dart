import 'package:flutter/material.dart';
import 'package:simple_todo_app/models/todo_item_model.dart';
import 'package:simple_todo_app/ui/add_todo_screen.dart';
import 'package:simple_todo_app/ui/done_tasks_screen.dart';
import 'package:simple_todo_app/widgets/todo_item_card.dart';

class TodoScreen extends StatelessWidget {
  final List<TodoItemModel> todoList = TodoItemModel().getTodoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.pushNamed(context, AddTodoScreen.routeName),
      ),
      appBar: AppBar(
        title: Text("Todo App"),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, DoneTasksScreen.routeName),
            icon: Icon(Icons.playlist_add_check_rounded),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, i) {
            return TodoItemCard(
              title: todoList[i].title,
              subtitle: todoList[i].subtitle,
            );
          },
        ),
      ),
    );
  }
}
