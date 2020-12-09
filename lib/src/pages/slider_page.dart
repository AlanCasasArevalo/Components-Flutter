import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _sliderCreation(),
            Expanded(child: _imageCreation())

          ],
        ),
      ),
    );
  }

  Widget _sliderCreation() {
    return Slider(
      activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        // divisions: 100,
        min: 0,
        max: 400,
        value: _sliderValue,
        onChanged: (value) {
          setState(() {
            _sliderValue = value;
          });
        });
  }

  Widget _imageCreation() {
    return FadeInImage(
      width: _sliderValue,
      fit: BoxFit.contain,
      image: NetworkImage('https://lanetaneta.com/wp-content/uploads/2019/09/%C2%BFC%C3%B3mo-consigui%C3%B3-Wolverine-su-esqueleto-de-Adamantium-y-sus-garras.jpg'),
      placeholder: AssetImage('assets/loading.gif'),
      fadeInDuration: Duration(
          milliseconds: 200
      ),
    );
  }
}
