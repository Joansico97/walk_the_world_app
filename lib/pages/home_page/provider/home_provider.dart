import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_provider.freezed.dart';
part 'home_provider.g.dart';

final homeProvider = StateNotifierProvider<HomePageEvents, HomePageModel>(
  (ref) => HomePageEvents(ref),
);

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    required bool isCharging,
  }) = _HomePageModel;

  factory HomePageModel.fromJson(Map<String, dynamic> json) => _$HomePageModelFromJson(json);
}

class HomePageEvents extends StateNotifier<HomePageModel> {
  HomePageEvents(this.ref)
      : super(
          const HomePageModel(
            isCharging: false,
          ),
        );

  final Ref ref;
}
