import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          _bigCardType()
        ],
      ),
    );
  }
}

Widget _bigCardType() {
  return Card(
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.add_a_photo_outlined, color: Colors.blue),
          title: Text('Titulo de la tarjeta'),
          subtitle: Text('Esto es un titulo largo para poder hacer muy muy diferente que es un titulo muy grande lorem ipsum in'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(onPressed: () {}, child: Text('Cancelar')),
            FlatButton(onPressed: () {}, child: Text('Ok'),)
          ],
        )
      ],
    ),
  );
}
