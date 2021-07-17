abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;
}
