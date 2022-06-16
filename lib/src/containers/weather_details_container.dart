import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/models/index.dart';

class WeatherDetailsContainer extends StatelessWidget {
  const WeatherDetailsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<WeatherDetails> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WeatherDetails>(
      converter: (Store<AppState> store) => store.state.weatherDetails,
      builder: builder,
    );
  }
}
