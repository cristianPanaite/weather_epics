// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<WeatherDetails> _$weatherDetailsSerializer = new _$WeatherDetailsSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<Main> _$mainSerializer = new _$MainSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'weatherDetails',
      serializers.serialize(object.weatherDetails, specifiedType: const FullType(WeatherDetails)),
    ];
    Object? value;
    value = object.temperatureScale;
    if (value != null) {
      result
        ..add('temperatureScale')
        ..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weatherDetails':
          result.weatherDetails.replace(
              serializers.deserialize(value, specifiedType: const FullType(WeatherDetails))! as WeatherDetails);
          break;
        case 'temperatureScale':
          result.temperatureScale = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDetailsSerializer implements StructuredSerializer<WeatherDetails> {
  @override
  final Iterable<Type> types = const [WeatherDetails, _$WeatherDetails];
  @override
  final String wireName = 'WeatherDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'weather',
      serializers.serialize(object.weather, specifiedType: const FullType(BuiltList, const [const FullType(Weather)])),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(Main)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Weather)]))! as BuiltList<Object?>);
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value, specifiedType: const FullType(Main))! as Main);
          break;
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'main':
          result.main = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MainSerializer implements StructuredSerializer<Main> {
  @override
  final Iterable<Type> types = const [Main, _$Main];
  @override
  final String wireName = 'Main';

  @override
  Iterable<Object?> serialize(Serializers serializers, Main object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.temp;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.feels_like;
    if (value != null) {
      result
        ..add('feels_like')
        ..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.temp_min;
    if (value != null) {
      result
        ..add('temp_min')
        ..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.temp_max;
    if (value != null) {
      result
        ..add('temp_max')
        ..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.pressure;
    if (value != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Main deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'feels_like':
          result.feels_like = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_min':
          result.temp_min = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_max':
          result.temp_max = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value, specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final WeatherDetails weatherDetails;
  @override
  final String? temperatureScale;

  factory _$AppState([void Function(AppStateBuilder)? updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({required this.weatherDetails, this.temperatureScale}) : super._() {
    BuiltValueNullFieldError.checkNotNull(weatherDetails, 'AppState', 'weatherDetails');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && weatherDetails == other.weatherDetails && temperatureScale == other.temperatureScale;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, weatherDetails.hashCode), temperatureScale.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('weatherDetails', weatherDetails)
          ..add('temperatureScale', temperatureScale))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  WeatherDetailsBuilder? _weatherDetails;
  WeatherDetailsBuilder get weatherDetails => _$this._weatherDetails ??= new WeatherDetailsBuilder();
  set weatherDetails(WeatherDetailsBuilder? weatherDetails) => _$this._weatherDetails = weatherDetails;

  String? _temperatureScale;
  String? get temperatureScale => _$this._temperatureScale;
  set temperatureScale(String? temperatureScale) => _$this._temperatureScale = temperatureScale;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weatherDetails = $v.weatherDetails.toBuilder();
      _temperatureScale = $v.temperatureScale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(weatherDetails: weatherDetails.build(), temperatureScale: temperatureScale);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weatherDetails';
        weatherDetails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherDetails extends WeatherDetails {
  @override
  final BuiltList<Weather> weather;
  @override
  final Main main;
  @override
  final String? name;

  factory _$WeatherDetails([void Function(WeatherDetailsBuilder)? updates]) =>
      (new WeatherDetailsBuilder()..update(updates)).build();

  _$WeatherDetails._({required this.weather, required this.main, this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(weather, 'WeatherDetails', 'weather');
    BuiltValueNullFieldError.checkNotNull(main, 'WeatherDetails', 'main');
  }

  @override
  WeatherDetails rebuild(void Function(WeatherDetailsBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherDetailsBuilder toBuilder() => new WeatherDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDetails && weather == other.weather && main == other.main && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, weather.hashCode), main.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherDetails')
          ..add('weather', weather)
          ..add('main', main)
          ..add('name', name))
        .toString();
  }
}

class WeatherDetailsBuilder implements Builder<WeatherDetails, WeatherDetailsBuilder> {
  _$WeatherDetails? _$v;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather => _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  MainBuilder? _main;
  MainBuilder get main => _$this._main ??= new MainBuilder();
  set main(MainBuilder? main) => _$this._main = main;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WeatherDetailsBuilder();

  WeatherDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weather = $v.weather.toBuilder();
      _main = $v.main.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDetails;
  }

  @override
  void update(void Function(WeatherDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherDetails build() {
    _$WeatherDetails _$result;
    try {
      _$result = _$v ?? new _$WeatherDetails._(weather: weather.build(), main: main.build(), name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'main';
        main.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('WeatherDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final String main;
  @override
  final String description;

  factory _$Weather([void Function(WeatherBuilder)? updates]) => (new WeatherBuilder()..update(updates)).build();

  _$Weather._({required this.main, required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(main, 'Weather', 'main');
    BuiltValueNullFieldError.checkNotNull(description, 'Weather', 'description');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather && main == other.main && description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, main.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('main', main)
          ..add('description', description))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _main = $v.main;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            main: BuiltValueNullFieldError.checkNotNull(main, 'Weather', 'main'),
            description: BuiltValueNullFieldError.checkNotNull(description, 'Weather', 'description'));
    replace(_$result);
    return _$result;
  }
}

class _$Main extends Main {
  @override
  final double? temp;
  @override
  final double? feels_like;
  @override
  final double? temp_min;
  @override
  final double? temp_max;
  @override
  final double? pressure;
  @override
  final double? humidity;

  factory _$Main([void Function(MainBuilder)? updates]) => (new MainBuilder()..update(updates)).build();

  _$Main._({this.temp, this.feels_like, this.temp_min, this.temp_max, this.pressure, this.humidity}) : super._();

  @override
  Main rebuild(void Function(MainBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  MainBuilder toBuilder() => new MainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Main &&
        temp == other.temp &&
        feels_like == other.feels_like &&
        temp_min == other.temp_min &&
        temp_max == other.temp_max &&
        pressure == other.pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, temp.hashCode), feels_like.hashCode), temp_min.hashCode), temp_max.hashCode),
            pressure.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Main')
          ..add('temp', temp)
          ..add('feels_like', feels_like)
          ..add('temp_min', temp_min)
          ..add('temp_max', temp_max)
          ..add('pressure', pressure)
          ..add('humidity', humidity))
        .toString();
  }
}

class MainBuilder implements Builder<Main, MainBuilder> {
  _$Main? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feels_like;
  double? get feels_like => _$this._feels_like;
  set feels_like(double? feels_like) => _$this._feels_like = feels_like;

  double? _temp_min;
  double? get temp_min => _$this._temp_min;
  set temp_min(double? temp_min) => _$this._temp_min = temp_min;

  double? _temp_max;
  double? get temp_max => _$this._temp_max;
  set temp_max(double? temp_max) => _$this._temp_max = temp_max;

  double? _pressure;
  double? get pressure => _$this._pressure;
  set pressure(double? pressure) => _$this._pressure = pressure;

  double? _humidity;
  double? get humidity => _$this._humidity;
  set humidity(double? humidity) => _$this._humidity = humidity;

  MainBuilder();

  MainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feels_like = $v.feels_like;
      _temp_min = $v.temp_min;
      _temp_max = $v.temp_max;
      _pressure = $v.pressure;
      _humidity = $v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Main other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Main;
  }

  @override
  void update(void Function(MainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Main build() {
    final _$result = _$v ??
        new _$Main._(
            temp: temp,
            feels_like: feels_like,
            temp_min: temp_min,
            temp_max: temp_max,
            pressure: pressure,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
