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
        children: [_bigCardType(), SizedBox(height: 16.0), _imageCardType()],
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
          subtitle: Text(
              'Esto es un titulo largo para poder hacer muy muy diferente que es un titulo muy grande lorem ipsum in'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(onPressed: () {}, child: Text('Cancelar')),
            FlatButton(
              onPressed: () {},
              child: Text('Ok'),
            )
          ],
        )
      ],
    ),
  );
}

Widget _imageCardType() {
  return Card(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://photographylife.com/wp-content/uploads/2010/11/Maroon-Bells-with-Snow.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          fit: BoxFit.cover,
          height: 250,
        ),
        // Image(
        //     image: NetworkImage(
        //         'https://photographylife.com/wp-content/uploads/2010/11/Maroon-Bells-with-Snow.jpg')
        // ),
        Container(
            padding: EdgeInsets.all(8),
            child: Text('Habria que poner un texto dummy'))
      ],
    ),
  );
}
