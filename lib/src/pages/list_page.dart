import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numberList = new List();
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();
    _addTenNewElements();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _addTenNewElements();
      }
    });
  }

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
        controller: _scrollController,
        itemCount: _numberList.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numberList[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300?random=$image'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          );
        });
  }

  _addTenNewElements() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }

    setState(() {});
  }
}
