import 'package:flutter/material.dart';

class DoneItemCard extends StatelessWidget {
  final String title;
  final String subtitle;

  DoneItemCard({this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
