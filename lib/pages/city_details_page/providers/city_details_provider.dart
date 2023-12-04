import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _CityDetailsPageModel;

  factory CityDetailsPageModel.fromJson(Map<String, dynamic> json) => _$CityDetailsPageModelFromJson(json);
}

class CityDetailsPageEvents extends StateNotifier<CityDetailsPageModel> {
  CityDetailsPageEvents(this.ref)
      : super(
          const CityDetailsPageModel(
            isCharging: false,
            isSearching: false,
          ),
        );

  final Ref ref;
  final TextEditingController searchConroller = TextEditingController();

  void onSearch(String value) {
    value.isEmpty ? state = state.copyWith(isSearching: false) : state = state.copyWith(isSearching: true);
  }

  void cleanSearch() {
    searchConroller.clear();
    state = state.copyWith(isSearching: false);
  }
}
