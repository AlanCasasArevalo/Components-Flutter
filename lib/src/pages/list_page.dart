import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _numberList = new List();
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addTenNewElements();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        // _addTenNewElements();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de elementos'),
      ),
      body: Stack(
        children:[
          _listCreation(),
          _loadingCreation()
        ]
      ),
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

  Future<Null> _fetchData() async {
    _isLoading = true;
    setState(() {

    });
    final fetchDurationDelay = new Duration(seconds: 2);
    new Timer(fetchDurationDelay, _responseHTTP);
  }

  void _responseHTTP() {
    _isLoading = false;
    _addTenNewElements();
  }

  Widget _loadingCreation() {
    if (_isLoading) {
      return CircularProgressIndicator();
    } else {
      return Container();
    }
  }
}
