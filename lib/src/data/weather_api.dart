import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/index.dart';

class WeatherApi {
  WeatherApi({required String apiUrl, required Client client})
      : _apiUrl = apiUrl,
        _client = client;

  final String _apiUrl;
  final Client _client;
  final String key = 'a5dde5c0928ce3782c292c5c6df356e5';

  Future<WeatherDetails> getWeather(String city) async {
    final Uri uri = Uri.parse('$_apiUrl?q=$city&appid=$key');
    final Response response = await _client.get(uri);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    return WeatherDetails.fromJson(jsonDecode(response.body));
  }
}
