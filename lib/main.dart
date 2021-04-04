import 'package:flutter/material.dart';
import 'package:simple_todo_app/ui/edit_item_screen.dart';
import 'package:simple_todo_app/ui/todo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoScreen(),
        routes: {
          EditItemScreen.routeName: (ctx) => EditItemScreen(),
        });
  }
}
