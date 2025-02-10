part of './injection_container.dart';

void _initRepositoriesInjection() {
  di.registerLazySingleton<ExampleRepository>(
    () => ExampleApiResource(
      client: di(),
    ),
  );
}
