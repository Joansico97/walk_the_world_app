import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingState.initial()) {
    on<OnBoardingEvent>(
      (events, emit) => events.map(
        changeIndex: (event) => _changeIndex(event.index, emit),
      ),
    );
  }

  _changeIndex(int index, Emitter<OnBoardingState> emit) {
    emit(state.copyWith(currentIndex: index));
  }
}
