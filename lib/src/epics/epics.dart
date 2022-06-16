import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/actions/app_action.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';

class AppEpics {
  const AppEpics({required WeatherApi weatherApi}) : _weatherApi = weatherApi;
  final WeatherApi _weatherApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(
      <Epic<AppState>>[
        TypedEpic<AppState, InitAppStart>(_initAppStart),
        TypedEpic<AppState, GetWeatherStart>(_getWeather),
      ],
    );
  }

  Stream<AppAction> _getWeather(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions //
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap((GetWeatherStart action) => Stream<GetWeatherStart>.value(action)
            .asyncMap((GetWeatherStart action) => _weatherApi.getWeather(action.city))
            .map((WeatherDetails weatherDetails) => GetWeather.successful(weatherDetails))
            .onErrorReturnWith((Object error, StackTrace st) => GetWeather.error(error, st))
            .doOnData(action.result));
  }

  Stream<AppAction> _initAppStart(Stream<InitAppStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((InitAppStart value) => Stream<void>.value(null)
            .asyncMap((_) => _weatherApi.getWeather('Cluj-Napoca'))
            .map((WeatherDetails weatherDetails) => InitApp.successful(weatherDetails))
            .onErrorReturnWith((Object error, StackTrace st) => InitApp.error(error, st)));
  }
}
