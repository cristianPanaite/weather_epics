part of actions;

@freezed
class InitApp with _$InitApp implements AppAction {
  const factory InitApp() = InitAppStart;

  const factory InitApp.successful(WeatherDetails weatherDetails) = InitAppSuccessful;

  @Implements(ErrorAction)
  const factory InitApp.error(Object error, StackTrace stackTrace) = InitAppError;
}
