library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/src/models/weather.dart';

import 'app_state.dart';
import 'current.dart';
import 'location.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  Location,
  Weather,
  Current,
])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
