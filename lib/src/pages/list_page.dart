import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List<int> _numberList = [0, 1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de elementos'),
      ),
      body: _listCreation(),
    );
  }

  Widget _listCreation() {
    return ListView.builder(
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numberList[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?random=$image'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(
                milliseconds: 200
            ),
          );
        }
    );
  }
}
