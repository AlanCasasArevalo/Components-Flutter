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

    menuProvider.loadData();

    return ListView(
      children: _itemsList(),
    );
  }

  List<Widget> _itemsList() {
    return [
      ListTile(
        title: Text('Hola Mundo'),
      ),
      Divider(
        color: Colors.black,
        height: 2,
        thickness: 5,
        indent: 20,
        endIndent: 0,
      )
    ];
  }
}
