import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes HomePageTemp'),
      ),
      body: ListView(
          // children: _itemsCreation()
          children: _shortItemsCreation()
      ),
    );
  }

  List<Widget> _itemsCreation() {
    List<Widget> list = new List<Widget>();

    for (String option in options) {
      final temporalWidget = ListTile(
        title: Text(option),
      );
      list..add(temporalWidget)..add(const Divider(
        color: Colors.black,
        height: 20,
        thickness: 5,
        indent: 20,
        endIndent: 0,
      ));
    }

    return list;
  }

  List<Widget> _shortItemsCreation() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
              title: Text(item),
            subtitle: Text(item + ' Subtitulo'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(
            color: Colors.black,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
          )
        ],
      );
    }
    ).toList();
  }
}
