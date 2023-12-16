import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/core/router/router_config.dart';
import 'package:wtw_app/core/router/routes_names.dart';
import 'package:wtw_app/data/providers/auth_provider.dart';
import 'package:wtw_app/data/providers/cities_provider.dart';

part 'home_provider.freezed.dart';
part 'home_provider.g.dart';

final homeProvider = StateNotifierProvider<HomePageEvents, HomePageModel>(
  (ref) => HomePageEvents(ref),
);

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    required bool isSearching,
  }) = _HomePageModel;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => _$HomePageModelFromJson(json);
}

class HomePageEvents extends StateNotifier<HomePageModel> {
  HomePageEvents(this.ref)
      : super(
          const HomePageModel(
            isSearching: false,
          ),
        );

  final Ref ref;
  final TextEditingController searchConroller = TextEditingController();

  void onSearch(String value) {
    value.isEmpty ? state = state.copyWith(isSearching: false) : state = state.copyWith(isSearching: true);
    ref.read(citiesProvider.notifier).onSearch(value);
  }

  void cleanSearch() {
    searchConroller.clear();
    state = state.copyWith(isSearching: false);
  }

  Future<void> onLogout() async {
    final router = ref.read(appRouterProvider);
    await ref
        .read(authProvider)
        .logOut()
        .whenComplete(() => Future.delayed(const Duration(milliseconds: 500), () => router.push(RoutesNames.home)));
  }
}
