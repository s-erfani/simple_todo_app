import 'package:flutter/material.dart';

class TodoItem with ChangeNotifier {
  String title;
  String subtitle;

  TodoItem({this.title, this.subtitle});
}
