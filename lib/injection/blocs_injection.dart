part of './injection_container.dart';

void _initBlocsInjection() {
  di
    ..registerLazySingleton(
      () => AppBloc(),
    )
    ..registerFactory(
      () => HomeBloc(),
    );
}
