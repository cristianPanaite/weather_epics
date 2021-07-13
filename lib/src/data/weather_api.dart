import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/weather.dart';

class WeatherApi {
  WeatherApi({required Client client}) : _client = client;

  final Client _client;

  /// [BUG] : Can't access weather api. :(
  Future<Weather> getWeather(double _lat, double _lon) async {
    print('enter in api weather');
    final Uri uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$_lat&lon=$_lon&exclude=hourly,minutely&appid=503ad05f4fe3732aa3078ffcd21a3f09');
    final Response response = await _client.get(uri);
    print(response.body);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    return Weather.fromJson(jsonDecode(response.body));
  }
}
