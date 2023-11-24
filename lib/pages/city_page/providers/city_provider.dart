import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_provider.freezed.dart';
part 'city_provider.g.dart';

final cityProvider = StateNotifierProvider<CityPageEvents, CityPageModel>(
  (ref) => CityPageEvents(ref),
);

@freezed
class CityPageModel with _$CityPageModel {
  const factory CityPageModel({
    required bool isCharging,
    required bool isSearching,
  }) = _CityPageModel;

  factory CityPageModel.fromJson(Map<String, dynamic> json) => _$CityPageModelFromJson(json);
}

class CityPageEvents extends StateNotifier<CityPageModel> {
  CityPageEvents(this.ref)
      : super(
          const CityPageModel(
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
