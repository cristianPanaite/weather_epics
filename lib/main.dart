import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/epics/epics.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/home_page.dart';
import 'package:weather_app/src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Client client = Client();
  final WeatherApi weatherApi = WeatherApi(apiUrl: 'https://api.openweathermap.org/data/2.5/weather', client: client);
  final AppEpics appEpics = AppEpics(weatherApi: weatherApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );
  store.dispatch(const InitAppStart());
  runApp(WeatherApp(store: store));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        theme: ThemeData.dark(),
      ),
    );
  }
}
