import 'package:flutter/material.dart';

class EditItemScreen extends StatelessWidget {
  static const routeName = '/edit_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: Text("title item"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: "subtitle",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
