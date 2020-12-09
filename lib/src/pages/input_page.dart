import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _name = '';
  String _email = '';
  String _password = '';

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
          _personCreation(),
          Divider(),
          _emailCreation(),
          Divider(),
          _passwordCreation()
        ],
      ),
    );
  }

  Widget _personCreation() {
    return ListTile(
      title: Text('Nombre ${ _name }'),
      subtitle: Text('Email ${ _email }')
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

  Widget _emailCreation() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('Letras ${ _email.length }'),
          hintText: 'Email',
          labelText: 'Email',
          helperText: 'Solo email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _passwordCreation() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text('Letras ${ _email.length }'),
          hintText: 'Password',
          labelText: 'Password',
          helperText: 'Solo password',
          suffixIcon: Icon(Icons.lock),
          icon: Icon(Icons.lock)
      ),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

}
