import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/core/router/router_config.dart';
import 'package:wtw_app/core/router/routes_names.dart';
import 'package:wtw_app/data/models/remote_models/city_model/restaurant.dart';
import 'package:wtw_app/data/models/remote_models/city_model/route.dart';

part 'city_details_provider.freezed.dart';
part 'city_details_provider.g.dart';

final cityDetailsProvider = StateNotifierProvider<CityDetailsPageEvents, CityDetailsPageModel>(
  (ref) => CityDetailsPageEvents(ref),
);

@freezed
class CityDetailsPageModel with _$CityDetailsPageModel {
  const factory CityDetailsPageModel({
    required bool isCharging,
    required bool isSearching,
    required int index,
    required List<bool> isSelected,
  }) = _CityDetailsPageModel;

  factory CityDetailsPageModel.fromJson(Map<String, dynamic> json) => _$CityDetailsPageModelFromJson(json);
}

class CityDetailsPageEvents extends StateNotifier<CityDetailsPageModel> {
  CityDetailsPageEvents(this.ref)
      : super(
          const CityDetailsPageModel(
            isCharging: false,
            isSearching: false,
            index: 0,
            isSelected: [true, false, false],
          ),
        );

  final Ref ref;
  final TextEditingController searchConroller = TextEditingController();

  final PageController pageController = PageController();

  void onSearch(String value) {
    value.isEmpty ? state = state.copyWith(isSearching: false) : state = state.copyWith(isSearching: true);
  }

  void cleanSearch() {
    searchConroller.clear();
    state = state.copyWith(isSearching: false);
  }

  void changeTab(int index) {
    state = state.copyWith(isSelected: [false, false, false]);
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    List<bool> tempIsSelected = [...state.isSelected];
    tempIsSelected[index] = true;
    state = state.copyWith(isSelected: tempIsSelected);
  }

  Future<void> goToRouteDetails(RouteModel route) async {
    final router = ref.read(appRouterProvider);
    await router.pushNamed(RoutesNames.routeDetails, extra: {
      'route': route,
    });
  }

  Future<void> goToRestaurantDetails(Restaurant restaurant) async {
    final router = ref.read(appRouterProvider);
    await router.pushNamed(RoutesNames.restaurantDetails, extra: {
      'restaurant': restaurant,
    });
  }
}
