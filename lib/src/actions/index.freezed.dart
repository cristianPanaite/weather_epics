// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetWeatherTearOff {
  const _$GetWeatherTearOff();

  GetWeatherStart call(String city, void Function(AppAction) result) {
    return GetWeatherStart(
      city,
      result,
    );
  }

  GetWeatherSuccessful successful(WeatherDetails weatherDetails) {
    return GetWeatherSuccessful(
      weatherDetails,
    );
  }

  GetWeatherError error(Object error, StackTrace stackTrace) {
    return GetWeatherError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetWeather = _$GetWeatherTearOff();

/// @nodoc
mixin _$GetWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result) $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result)? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherCopyWith<$Res> {
  factory $GetWeatherCopyWith(GetWeather value, $Res Function(GetWeather) then) = _$GetWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetWeatherCopyWithImpl<$Res> implements $GetWeatherCopyWith<$Res> {
  _$GetWeatherCopyWithImpl(this._value, this._then);

  final GetWeather _value;
  // ignore: unused_field
  final $Res Function(GetWeather) _then;
}

/// @nodoc
abstract class $GetWeatherStartCopyWith<$Res> {
  factory $GetWeatherStartCopyWith(GetWeatherStart value, $Res Function(GetWeatherStart) then) =
      _$GetWeatherStartCopyWithImpl<$Res>;
  $Res call({String city, void Function(AppAction) result});
}

/// @nodoc
class _$GetWeatherStartCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherStartCopyWith<$Res> {
  _$GetWeatherStartCopyWithImpl(GetWeatherStart _value, $Res Function(GetWeatherStart) _then)
      : super(_value, (v) => _then(v as GetWeatherStart));

  @override
  GetWeatherStart get _value => super._value as GetWeatherStart;

  @override
  $Res call({
    Object? city = freezed,
    Object? result = freezed,
  }) {
    return _then(GetWeatherStart(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as void Function(AppAction),
    ));
  }
}

/// @nodoc

class _$GetWeatherStart implements GetWeatherStart {
  const _$GetWeatherStart(this.city, this.result);

  @override
  final String city;
  @override
  final void Function(AppAction) result;

  @override
  String toString() {
    return 'GetWeather(city: $city, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherStart &&
            (identical(other.city, city) || const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.result, result) || const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city) ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $GetWeatherStartCopyWith<GetWeatherStart> get copyWith =>
      _$GetWeatherStartCopyWithImpl<GetWeatherStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result) $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(city, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result)? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(city, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetWeatherStart implements GetWeather {
  const factory GetWeatherStart(String city, void Function(AppAction) result) = _$GetWeatherStart;

  String get city => throw _privateConstructorUsedError;
  void Function(AppAction) get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherStartCopyWith<GetWeatherStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherSuccessfulCopyWith<$Res> {
  factory $GetWeatherSuccessfulCopyWith(GetWeatherSuccessful value, $Res Function(GetWeatherSuccessful) then) =
      _$GetWeatherSuccessfulCopyWithImpl<$Res>;
  $Res call({WeatherDetails weatherDetails});
}

/// @nodoc
class _$GetWeatherSuccessfulCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherSuccessfulCopyWith<$Res> {
  _$GetWeatherSuccessfulCopyWithImpl(GetWeatherSuccessful _value, $Res Function(GetWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetWeatherSuccessful));

  @override
  GetWeatherSuccessful get _value => super._value as GetWeatherSuccessful;

  @override
  $Res call({
    Object? weatherDetails = freezed,
  }) {
    return _then(GetWeatherSuccessful(
      weatherDetails == freezed
          ? _value.weatherDetails
          : weatherDetails // ignore: cast_nullable_to_non_nullable
              as WeatherDetails,
    ));
  }
}

/// @nodoc

class _$GetWeatherSuccessful implements GetWeatherSuccessful {
  const _$GetWeatherSuccessful(this.weatherDetails);

  @override
  final WeatherDetails weatherDetails;

  @override
  String toString() {
    return 'GetWeather.successful(weatherDetails: $weatherDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherSuccessful &&
            (identical(other.weatherDetails, weatherDetails) ||
                const DeepCollectionEquality().equals(other.weatherDetails, weatherDetails)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(weatherDetails);

  @JsonKey(ignore: true)
  @override
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith =>
      _$GetWeatherSuccessfulCopyWithImpl<GetWeatherSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result) $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weatherDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result)? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weatherDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWeatherSuccessful implements GetWeather {
  const factory GetWeatherSuccessful(WeatherDetails weatherDetails) = _$GetWeatherSuccessful;

  WeatherDetails get weatherDetails => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherSuccessfulCopyWith<GetWeatherSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWeatherErrorCopyWith<$Res> {
  factory $GetWeatherErrorCopyWith(GetWeatherError value, $Res Function(GetWeatherError) then) =
      _$GetWeatherErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetWeatherErrorCopyWithImpl<$Res> extends _$GetWeatherCopyWithImpl<$Res>
    implements $GetWeatherErrorCopyWith<$Res> {
  _$GetWeatherErrorCopyWithImpl(GetWeatherError _value, $Res Function(GetWeatherError) _then)
      : super(_value, (v) => _then(v as GetWeatherError));

  @override
  GetWeatherError get _value => super._value as GetWeatherError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetWeatherError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetWeatherError implements GetWeatherError {
  const _$GetWeatherError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetWeatherError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith =>
      _$GetWeatherErrorCopyWithImpl<GetWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result) $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String city, void Function(AppAction) result)? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetWeatherStart value) $default, {
    required TResult Function(GetWeatherSuccessful value) successful,
    required TResult Function(GetWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetWeatherStart value)? $default, {
    TResult Function(GetWeatherSuccessful value)? successful,
    TResult Function(GetWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWeatherError implements GetWeather, ErrorAction {
  const factory GetWeatherError(Object error, StackTrace stackTrace) = _$GetWeatherError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWeatherErrorCopyWith<GetWeatherError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$InitAppTearOff {
  const _$InitAppTearOff();

  InitAppStart call() {
    return const InitAppStart();
  }

  InitAppSuccessful successful(WeatherDetails weatherDetails) {
    return InitAppSuccessful(
      weatherDetails,
    );
  }

  InitAppError error(Object error, StackTrace stackTrace) {
    return InitAppError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $InitApp = _$InitAppTearOff();

/// @nodoc
mixin _$InitApp {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitAppStart value) $default, {
    required TResult Function(InitAppSuccessful value) successful,
    required TResult Function(InitAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitAppStart value)? $default, {
    TResult Function(InitAppSuccessful value)? successful,
    TResult Function(InitAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitAppCopyWith<$Res> {
  factory $InitAppCopyWith(InitApp value, $Res Function(InitApp) then) = _$InitAppCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitAppCopyWithImpl<$Res> implements $InitAppCopyWith<$Res> {
  _$InitAppCopyWithImpl(this._value, this._then);

  final InitApp _value;
  // ignore: unused_field
  final $Res Function(InitApp) _then;
}

/// @nodoc
abstract class $InitAppStartCopyWith<$Res> {
  factory $InitAppStartCopyWith(InitAppStart value, $Res Function(InitAppStart) then) =
      _$InitAppStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitAppStartCopyWithImpl<$Res> extends _$InitAppCopyWithImpl<$Res> implements $InitAppStartCopyWith<$Res> {
  _$InitAppStartCopyWithImpl(InitAppStart _value, $Res Function(InitAppStart) _then)
      : super(_value, (v) => _then(v as InitAppStart));

  @override
  InitAppStart get _value => super._value as InitAppStart;
}

/// @nodoc

class _$InitAppStart implements InitAppStart {
  const _$InitAppStart();

  @override
  String toString() {
    return 'InitApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitAppStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitAppStart value) $default, {
    required TResult Function(InitAppSuccessful value) successful,
    required TResult Function(InitAppError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitAppStart value)? $default, {
    TResult Function(InitAppSuccessful value)? successful,
    TResult Function(InitAppError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class InitAppStart implements InitApp {
  const factory InitAppStart() = _$InitAppStart;
}

/// @nodoc
abstract class $InitAppSuccessfulCopyWith<$Res> {
  factory $InitAppSuccessfulCopyWith(InitAppSuccessful value, $Res Function(InitAppSuccessful) then) =
      _$InitAppSuccessfulCopyWithImpl<$Res>;
  $Res call({WeatherDetails weatherDetails});
}

/// @nodoc
class _$InitAppSuccessfulCopyWithImpl<$Res> extends _$InitAppCopyWithImpl<$Res>
    implements $InitAppSuccessfulCopyWith<$Res> {
  _$InitAppSuccessfulCopyWithImpl(InitAppSuccessful _value, $Res Function(InitAppSuccessful) _then)
      : super(_value, (v) => _then(v as InitAppSuccessful));

  @override
  InitAppSuccessful get _value => super._value as InitAppSuccessful;

  @override
  $Res call({
    Object? weatherDetails = freezed,
  }) {
    return _then(InitAppSuccessful(
      weatherDetails == freezed
          ? _value.weatherDetails
          : weatherDetails // ignore: cast_nullable_to_non_nullable
              as WeatherDetails,
    ));
  }
}

/// @nodoc

class _$InitAppSuccessful implements InitAppSuccessful {
  const _$InitAppSuccessful(this.weatherDetails);

  @override
  final WeatherDetails weatherDetails;

  @override
  String toString() {
    return 'InitApp.successful(weatherDetails: $weatherDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitAppSuccessful &&
            (identical(other.weatherDetails, weatherDetails) ||
                const DeepCollectionEquality().equals(other.weatherDetails, weatherDetails)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(weatherDetails);

  @JsonKey(ignore: true)
  @override
  $InitAppSuccessfulCopyWith<InitAppSuccessful> get copyWith =>
      _$InitAppSuccessfulCopyWithImpl<InitAppSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weatherDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weatherDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitAppStart value) $default, {
    required TResult Function(InitAppSuccessful value) successful,
    required TResult Function(InitAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitAppStart value)? $default, {
    TResult Function(InitAppSuccessful value)? successful,
    TResult Function(InitAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitAppSuccessful implements InitApp {
  const factory InitAppSuccessful(WeatherDetails weatherDetails) = _$InitAppSuccessful;

  WeatherDetails get weatherDetails => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitAppSuccessfulCopyWith<InitAppSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitAppErrorCopyWith<$Res> {
  factory $InitAppErrorCopyWith(InitAppError value, $Res Function(InitAppError) then) =
      _$InitAppErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$InitAppErrorCopyWithImpl<$Res> extends _$InitAppCopyWithImpl<$Res> implements $InitAppErrorCopyWith<$Res> {
  _$InitAppErrorCopyWithImpl(InitAppError _value, $Res Function(InitAppError) _then)
      : super(_value, (v) => _then(v as InitAppError));

  @override
  InitAppError get _value => super._value as InitAppError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(InitAppError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$InitAppError implements InitAppError {
  const _$InitAppError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitApp.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitAppError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $InitAppErrorCopyWith<InitAppError> get copyWith => _$InitAppErrorCopyWithImpl<InitAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(WeatherDetails weatherDetails) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(WeatherDetails weatherDetails)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(InitAppStart value) $default, {
    required TResult Function(InitAppSuccessful value) successful,
    required TResult Function(InitAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(InitAppStart value)? $default, {
    TResult Function(InitAppSuccessful value)? successful,
    TResult Function(InitAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitAppError implements InitApp, ErrorAction {
  const factory InitAppError(Object error, StackTrace stackTrace) = _$InitAppError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitAppErrorCopyWith<InitAppError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SwitchScaleTearOff {
  const _$SwitchScaleTearOff();

  SwitchScale$ call() {
    return const SwitchScale$();
  }
}

/// @nodoc
const $SwitchScale = _$SwitchScaleTearOff();

/// @nodoc
mixin _$SwitchScale {}

/// @nodoc
abstract class $SwitchScaleCopyWith<$Res> {
  factory $SwitchScaleCopyWith(SwitchScale value, $Res Function(SwitchScale) then) = _$SwitchScaleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchScaleCopyWithImpl<$Res> implements $SwitchScaleCopyWith<$Res> {
  _$SwitchScaleCopyWithImpl(this._value, this._then);

  final SwitchScale _value;
  // ignore: unused_field
  final $Res Function(SwitchScale) _then;
}

/// @nodoc
abstract class $SwitchScale$CopyWith<$Res> {
  factory $SwitchScale$CopyWith(SwitchScale$ value, $Res Function(SwitchScale$) then) =
      _$SwitchScale$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchScale$CopyWithImpl<$Res> extends _$SwitchScaleCopyWithImpl<$Res> implements $SwitchScale$CopyWith<$Res> {
  _$SwitchScale$CopyWithImpl(SwitchScale$ _value, $Res Function(SwitchScale$) _then)
      : super(_value, (v) => _then(v as SwitchScale$));

  @override
  SwitchScale$ get _value => super._value as SwitchScale$;
}

/// @nodoc

class _$SwitchScale$ implements SwitchScale$ {
  const _$SwitchScale$();

  @override
  String toString() {
    return 'SwitchScale()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SwitchScale$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SwitchScale$ implements SwitchScale {
  const factory SwitchScale$() = _$SwitchScale$;
}
