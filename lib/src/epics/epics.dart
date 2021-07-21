import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/app_action.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:rxdart/rxdart.dart';

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
        TypedEpic<AppState, GetLocationStart>(_getLocation),
        TypedEpic<AppState, GetWeatherStart>(_getWeather),
      ],
    );
  }

  Stream<AppAction> _getLocation(Stream<GetLocation> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetLocation event) => _locationApi.getLocation())
        .expand((Location location) => <AppAction>[GetLocation.successful(location), const GetWeatherStart()])
        .onErrorReturnWith((Object error, StackTrace st) => GetLocation.error(error, st));
  }

  Stream<AppAction> _getWeather(Stream<GetWeather> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeather event) => _weatherApi.getWeather(store.state.location!.lat, store.state.location!.lon))
        .map((Weather weather) => GetWeather.successful(weather))
        .onErrorReturnWith((Object error, StackTrace st) => GetWeather.error(error, st));
  }
}
