import 'package:flutter/material.dart';
import 'package:simple_todo_app/models/todo_item.dart';

class TodoItems with ChangeNotifier {
  List<TodoItem> _todoItems = [
    TodoItem(title: "title 1", subtitle: "sub 1"),
    TodoItem(title: "title 2", subtitle: "sub 2"),
    TodoItem(title: "title 3", subtitle: "sub 3"),
  ];

  List<TodoItem> get todoItemList => _todoItems;

  void addTodoItem(TodoItem newTodoItem) {
    _todoItems.add(newTodoItem);
    notifyListeners();
  }
}
