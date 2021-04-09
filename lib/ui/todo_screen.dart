import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/models/todo_items.dart';
import 'package:simple_todo_app/ui/add_todo_screen.dart';
import 'package:simple_todo_app/ui/done_tasks_screen.dart';
import 'package:simple_todo_app/widgets/todo_item_card.dart';

class TodoScreen extends StatelessWidget {
  // final List<TodoItem> todoList = TodoItems().todoItemList;

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
        child: Consumer<TodoItems>(
          builder: (context, myModel, _) {
            return ListView.builder(
              itemCount: myModel.todoItemList.length,
              itemBuilder: (context, i) {
                return TodoItemCard(
                  title: myModel.todoItemList[i].title,
                  subtitle: myModel.todoItemList[i].subtitle,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
