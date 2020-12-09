import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        children: [
          _inputCreate(),
          Divider(),
          _personCreation()
        ],
      ),
    );
  }

  Widget _personCreation() {
    return ListTile(
      title: Text('Nombre ${ _name }'),
    );
  }

  Widget _inputCreate() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('Letras ${ _name.length }'),
          hintText: 'Nombre de persona',
          labelText: 'Nombre',
          helperText: 'Solo nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)
      ),
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
    );
  }
}
