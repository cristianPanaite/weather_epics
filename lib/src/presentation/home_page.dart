import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weather_app/src/actions/app_action.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/containers/app_state_container.dart';
import 'package:weather_app/src/containers/weather_details_container.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/weather_element.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = false;

  void _onResult(AppAction action) {
    setState(() {
      _isLoading = false;
    });
    if (action is ErrorAction) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('The city was not found')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            WeatherDetailsContainer(
              builder: (BuildContext context, WeatherDetails weatherDetails) {
                if (weatherDetails.main.temp == null) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.amberAccent,
                    ),
                  );
                }
                return Center(
                  child: AppStateContainer(
                    builder: (BuildContext context, AppState appState) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Icon(
                            Icons.wb_cloudy,
                            size: 60,
                          ),
                          if (weatherDetails.name == null) const Text('No data') else Text(weatherDetails.name!),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, top: 10),
                            child: WeatherElement(
                              value: weatherDetails.main.temp,
                              text: 'Real Temperature',
                              scale: appState.temperatureScale,
                            ),
                          ),
                          Center(
                            child: WeatherElement(
                              value: weatherDetails.main.feels_like,
                              text: 'Feels Like',
                              scale: appState.temperatureScale,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              WeatherElement(
                                value: weatherDetails.main.temp_min,
                                text: 'Min Temp',
                                scale: appState.temperatureScale,
                              ),
                              WeatherElement(
                                value: weatherDetails.main.temp_max,
                                text: 'Max Temp',
                                scale: appState.temperatureScale,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: <Widget>[
                                    const Text('Pressure'),
                                    Text(weatherDetails.main.pressure.toString()),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: <Widget>[
                                    const Text('Humidity'),
                                    Text(weatherDetails.main.humidity.toString()),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                );
              },
            ),
            Positioned(
              top: 10,
              right: 15,
              left: 15,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.go,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.amberAccent,
                        ),
                        hintText: 'search',
                        // border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context).dispatch(GetWeatherStart(value, _onResult));
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(const SwitchScale());
                    },
                    icon: const Icon(
                      Icons.swap_horiz,
                      color: Colors.amberAccent,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: WeatherDetailsContainer(
        builder: (BuildContext context, WeatherDetails weatherDetails) {
          return FloatingActionButton(
            onPressed: () {
              setState(() {
                _isLoading = true;
              });
              String city = '';
              if (weatherDetails.name != null) {
                city = weatherDetails.name!;
              }
              StoreProvider.of<AppState>(context).dispatch(GetWeatherStart(city, _onResult));
            },
            backgroundColor: Colors.amberAccent,
            child: _isLoading == true ? const CircularProgressIndicator() : const Icon(Icons.refresh),
          );
        },
      ),
    );
  }
}
