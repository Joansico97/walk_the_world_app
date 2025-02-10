part of './injection_container.dart';

void _initNetworkInjection() {
  di.registerLazySingleton<ApiClient>(
    () => ApiClient(
      baseUrl: '',
    ),
  );
}
