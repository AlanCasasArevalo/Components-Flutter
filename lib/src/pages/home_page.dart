import 'package:components/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';

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
            children: _itemsList(snapshot.data, context),
          );
        });
  }

  List<Widget> _itemsList(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    data.forEach((option) {
      final tempWidget = ListTile(
        title: Text(option['text']),
        leading: getIcon(option['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route);
        },
      );
      options..add(tempWidget)..add(Divider(
        color: Colors.black,
        height: 20,
        thickness: 5,
        indent: 20,
        endIndent: 0,
      ));
    });

    return options;
  }
}
