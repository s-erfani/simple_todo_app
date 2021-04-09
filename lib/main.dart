import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/models/done_tasks.dart';
import 'package:simple_todo_app/models/todo_item.dart';
import 'package:simple_todo_app/models/todo_items.dart';
import 'package:simple_todo_app/ui/add_todo_screen.dart';
import 'package:simple_todo_app/ui/done_tasks_screen.dart';
import 'package:simple_todo_app/ui/edit_item_screen.dart';
import 'package:simple_todo_app/ui/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: TodoItem(),
        ),
        ChangeNotifierProvider.value(
          value: TodoItems(),
        ),
        ChangeNotifierProvider.value(
          value: DoneTasks(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.purple,
            accentColor: Colors.purple[800],
          ),
          debugShowCheckedModeBanner: false,
          home: TodoScreen(),
          routes: {
            EditItemScreen.routeName: (ctx) => EditItemScreen(),
            DoneTasksScreen.routeName: (ctx) => DoneTasksScreen(),
            AddTodoScreen.routeName: (ctx) => AddTodoScreen(),
          }),
    );
  }
}
