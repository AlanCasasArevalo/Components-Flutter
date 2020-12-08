import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessible_forward_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}