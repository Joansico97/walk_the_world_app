part of 'app_bloc.dart';

class LocaleConverter implements JsonConverter<Locale, String> {
  const LocaleConverter();

  @override
  Locale fromJson(String json) => Locale(json);

  @override
  String toJson(Locale locale) => locale.languageCode;
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool isLoading,
    @LocaleConverter() required Locale locale,
  }) = _AppState;

  factory AppState.initial() {
    final defaultLocale = PlatformDispatcher.instance.locale;

    return AppState(
      isLoading: false,
      locale: defaultLocale,
    );
  }

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
