import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar una alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessible_forward_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            title: Text('Titulo de la alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Contenido de la caja que muestra una alerta de cualquier manera'),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Ok'),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'),
              )
            ],
          );
        }
        );
  }
}
