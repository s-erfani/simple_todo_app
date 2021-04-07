import 'package:flutter/material.dart';

class TodoItemModel with ChangeNotifier {
  String title;
  String subtitle;

  TodoItemModel({this.title, this.subtitle});

  List<TodoItemModel> getTodoList() {
    return [
      TodoItemModel(title: "title 1", subtitle: "sub 1"),
      TodoItemModel(title: "title 2", subtitle: "sub 2"),
      TodoItemModel(title: "title 3", subtitle: "sub 3"),
    ];
  }
}
