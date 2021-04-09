import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/models/done_tasks.dart';
import 'package:simple_todo_app/widgets/done_item_card.dart';

class DoneTasksScreen extends StatelessWidget {
  static const routeName = "/done_tasks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Done Tasks"),
      ),
      body: Container(
        child: Consumer<DoneTasks>(
          builder: (context, myModel, _) {
            return ListView.builder(
              itemCount: myModel.doneItemList.length,
              itemBuilder: (context, i) {
                return DoneItemCard(
                  title: myModel.doneItemList[i].title,
                  subtitle: myModel.doneItemList[i].subtitle,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
