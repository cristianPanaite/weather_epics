import 'package:flutter/material.dart';
import 'package:weather_app/src/containers/location_container.dart';
import 'package:weather_app/src/containers/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Location'),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 80.0, 0, 0),
        child: Column(
          children: <Widget>[
            LocationContainer(
              builder: (BuildContext context, Location? location) {
                if (location == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.add_location_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        Text(
                          '${location.city}, ${location.country}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.add_location_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        Text(
                          '${location.lat}, ${location.lon}',
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            WeatherContainer(
              builder: (BuildContext context, Weather? weather) {
                if (weather == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return Column(
                  children: <Widget>[
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(
                          Icons.wb_sunny_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                        Text(
                          (weather.current.temp - 274.15).toInt().toString(),
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
