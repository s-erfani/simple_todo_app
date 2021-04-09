import 'package:flutter/material.dart';

class TodoItem with ChangeNotifier {
  int id;
  String title;
  String subtitle;

  TodoItem({this.id, this.title, this.subtitle});
}
