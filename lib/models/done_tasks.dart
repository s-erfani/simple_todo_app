import 'package:flutter/foundation.dart';
import 'package:simple_todo_app/models/todo_item.dart';

class DoneTasks with ChangeNotifier {
  List<TodoItem> _doneItems = [];

  List<TodoItem> get doneItemList => _doneItems;

  void addToDone(TodoItem doneTask) {
    _doneItems.add(doneTask);
    notifyListeners();
  }
}
