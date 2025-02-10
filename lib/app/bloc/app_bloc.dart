import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';
part 'app_bloc.g.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initial()) {
    on<AppEvent>(
      (events, emit) => events.map(
        changeLoading: (event) => _changeLoading(emit),
        changeLocale: (event) => _changeLocale(event.locale, emit),
      ),
    );
  }

  _changeLoading(Emitter<AppState> emit) {
    emit(
      state.copyWith(
        isLoading: !state.isLoading,
      ),
    );
  }

  _changeLocale(Locale locale, Emitter<AppState> emit) {
    emit(
      state.copyWith(
        locale: locale,
      ),
    );
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    try {
      return AppState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }
}
