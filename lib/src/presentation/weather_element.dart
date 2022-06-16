import 'package:flutter/material.dart';

class WeatherElement extends StatelessWidget {
  const WeatherElement({Key? key, required this.value, required this.text, required this.scale}) : super(key: key);

  final double? value;
  final String text;
  final String? scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: <Widget>[
          Text(text),
          if (scale == 'Celsius')
            Text((value! - 273.15).toStringAsFixed(2) + ' C')
          else
            Text(((value! - 273.15) * 9 / 5 + 32).toStringAsFixed(2) + ' F'),
        ],
      ),
    );
  }
}
