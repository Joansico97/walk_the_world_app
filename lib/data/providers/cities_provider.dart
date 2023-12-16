import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/data/models/remote_models/city_model/city_model.dart';
import 'package:wtw_app/data/providers/providers.dart';

part 'cities_provider.freezed.dart';
part 'cities_provider.g.dart';

final citiesProvider = StateNotifierProvider<HomePageEvents, CityProviderModel>(
  (ref) => HomePageEvents(ref),
);

@freezed
class CityProviderModel with _$CityProviderModel {
  const factory CityProviderModel({
    required List<CityModel> listCities,
    required List<CityModel> searchedCities,
  }) = _CityProviderModel;

  factory CityProviderModel.fromJson(Map<String, dynamic> json) => _$CityProviderModelFromJson(json);
}

class HomePageEvents extends StateNotifier<CityProviderModel> {
  HomePageEvents(this.ref)
      : super(
          const CityProviderModel(
            listCities: [],
            searchedCities: [],
          ),
        );

  final Ref ref;

  Future<void> getAllCities() async {
    final cities = await ref.read(databaseProvider).get(document: null, table: 'Cities');
    List<CityModel> list = [];
    cities.fold((l) => [], (r) {
      for (var i = 0; i < r['data'].length; i++) {
        list.add(CityModel.fromJson(r['data'][i]));
      }
    });

    state = state.copyWith(listCities: list);
  }

  void onSearch(String value) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = state.copyWith(
        searchedCities: state.listCities
            .where((element) => element.name.toString().toLowerCase().contains(value.toLowerCase()))
            .toList(),
      );
    });
  }
}
