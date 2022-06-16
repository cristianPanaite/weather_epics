import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, InitAppSuccessful>(_initAppSuccessful),
  TypedReducer<AppState, SwitchScale>(_switchScale),
]);

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.weatherDetails = action.weatherDetails.toBuilder();
  });
}

AppState _initAppSuccessful(AppState state, InitAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b.weatherDetails = action.weatherDetails.toBuilder();
    b.temperatureScale = 'Fahrenheit';
  });
}

AppState _switchScale(AppState state, SwitchScale action) {
  return state.rebuild((AppStateBuilder b) {
    if (b.temperatureScale == 'Celsius') {
      b.temperatureScale = 'Fahrenheit';
    } else {
      b.temperatureScale = 'Celsius';
    }
  });
}
