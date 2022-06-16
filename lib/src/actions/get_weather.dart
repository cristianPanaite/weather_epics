part of actions;

@freezed
class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather(String city, ActionResult result) = GetWeatherStart;

  const factory GetWeather.successful(WeatherDetails weatherDetails) = GetWeatherSuccessful;
  @Implements(ErrorAction)
  const factory GetWeather.error(Object error, StackTrace stackTrace) = GetWeatherError;
}
