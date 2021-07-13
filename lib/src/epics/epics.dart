import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/actions/get_weather.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/models/weather.dart';

class AppEpics {
  const AppEpics({
    required WeatherApi weatherApi,
    required LocationApi locationApi,
  })  : assert(weatherApi != null),
        assert(locationApi != null),
        _weatherApi = weatherApi,
        _locationApi = locationApi;

  final WeatherApi _weatherApi;
  final LocationApi _locationApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, GetLocation>(_getLocation),
        TypedEpic<AppState, GetWeather>(_getWeather),
      ],
    );
  }

  Stream<Object> _getLocation(Stream<GetLocation> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetLocation event) => _locationApi.getLocation())
        .expand<Object>((Location location) => <Object>[GetLocationSuccessful(location), GetWeather()])
        .onErrorReturnWith((Object error, StackTrace st) => GetLocationError(error));
  }

  Stream<Object> _getWeather(Stream<GetWeather> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeather event) => _weatherApi.getWeather(store.state.location!.lat, store.state.location!.lon))
        .map<Object>((Weather weather) => GetWeatherSuccessful(weather))
        .onErrorReturnWith((Object error, StackTrace st) => GetWeatherError(error));
  }
}
