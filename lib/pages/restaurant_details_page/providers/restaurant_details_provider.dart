import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_details_provider.freezed.dart';
part 'restaurant_details_provider.g.dart';

final restaurantDetailsProvider = StateNotifierProvider<RestaurantDetailsPageEvents, RestaurantDetailsPageModel>(
  (ref) => RestaurantDetailsPageEvents(ref),
);

@freezed
class RestaurantDetailsPageModel with _$RestaurantDetailsPageModel {
  const factory RestaurantDetailsPageModel({
    required int index,
    required List<bool> isActive,
  }) = _RestaurantDetailsPageModel;

  factory RestaurantDetailsPageModel.fromJson(Map<String, dynamic> json) => _$RestaurantDetailsPageModelFromJson(json);
}

class RestaurantDetailsPageEvents extends StateNotifier<RestaurantDetailsPageModel> {
  RestaurantDetailsPageEvents(this.ref)
      : super(
          const RestaurantDetailsPageModel(
            index: 0,
            isActive: [true, false, false],
          ),
        );

  final Ref ref;
  final List<String> labels = ['Descripción', 'Puntos de interés', 'Comentar'];
  final PageController pageController = PageController();

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
}
