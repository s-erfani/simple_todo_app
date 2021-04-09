import 'package:flutter/material.dart';
import 'package:simple_todo_app/models/todo_item.dart';

class TodoItems with ChangeNotifier {
  List<TodoItem> _todoItems = [
    TodoItem(id: 1, title: "title 1", subtitle: "sub 1"),
    TodoItem(id: 2, title: "title 2", subtitle: "sub 2"),
    TodoItem(id: 3, title: "title 3", subtitle: "sub 3"),
    TodoItem(id: 4, title: "title 4", subtitle: "sub 4"),
    TodoItem(id: 5, title: "title 5", subtitle: "sub 5"),
  ];

  List<TodoItem> get todoItemList => _todoItems;

  void addTodoItem(TodoItem newTodoItem) {
    _todoItems.add(newTodoItem);
    notifyListeners();
  }

  void removeFromList(int id) {
    _todoItems.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  void editTodoItem(int id, TodoItem editedTodo) {
    TodoItem item = _todoItems.firstWhere((item) => item.id == id);
    item.title = editedTodo.title;
    item.subtitle = editedTodo.subtitle;
    notifyListeners();
  }

// for adding new todos
  int get lastId => _todoItems.last.id;
}
