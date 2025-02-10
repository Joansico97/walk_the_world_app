part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.changeLoading() = _changeLoading;
  const factory AppEvent.changeLocale(Locale locale) = _changeLocale;
}
