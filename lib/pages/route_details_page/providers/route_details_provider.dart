import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_details_provider.freezed.dart';
part 'route_details_provider.g.dart';

final routeDetailsProvider = StateNotifierProvider<RouteDetailsPageEvents, RouteDetailsPageModel>(
  (ref) => RouteDetailsPageEvents(ref),
);

@freezed
class RouteDetailsPageModel with _$RouteDetailsPageModel {
  const factory RouteDetailsPageModel({
    required int index,
    required bool isPlaying,
    required List<bool> isActive,
  }) = _RouteDetailsPageModel;

  factory RouteDetailsPageModel.fromJson(Map<String, dynamic> json) => _$RouteDetailsPageModelFromJson(json);
}

class RouteDetailsPageEvents extends StateNotifier<RouteDetailsPageModel> {
  RouteDetailsPageEvents(this.ref)
      : super(
          const RouteDetailsPageModel(
            index: 0,
            isPlaying: false,
            isActive: [true, false, false],
          ),
        );

  final Ref ref;
  final List<String> labels = ['Descripción', 'Puntos de interés', 'Comentar'];
  final PageController pageController = PageController();

  void changeIndex(int index) {
    state = state.copyWith(index: index);
  }

  void changeTab(int index) {
    state = state.copyWith(isActive: [false, false, false]);
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    List<bool> tempisActive = [...state.isActive];
    tempisActive[index] = true;
    state = state.copyWith(isActive: tempisActive);
  }

  void playAudio() {
    state = state.copyWith(isPlaying: !state.isPlaying);
  }
}
