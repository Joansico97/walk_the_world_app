part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
      );
}
