part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    required int currentIndex,
  }) = _OnBoardingState;

  factory OnBoardingState.initial() => OnBoardingState(
        currentIndex: 0,
      );
}
