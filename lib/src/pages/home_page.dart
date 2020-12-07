import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components'),
        ),
        body: _listItemsCreation());
  }

  Widget _listItemsCreation() {
    return FutureBuilder(
        future: menuProvider.loadData(),
        initialData: [],
        // builder: (context, AsynSnapshot<List<dynamic>> snapshot),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _itemsList(snapshot.data),
          );
        });
  }

  List<Widget> _itemsList(List<dynamic> data) {
    final List<Widget> options = [];

    data.forEach((option) {
      final tempWidget = ListTile(
        title: Text(option['text']),
        // leading: Icon(option['icon']),
        leading: Icon(Icons.add, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      );
      options.add(tempWidget);
    });

    return options;
  }
}
