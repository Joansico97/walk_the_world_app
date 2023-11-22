import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_provider.freezed.dart';
part 'register_provider.g.dart';

final registerProvider = StateNotifierProvider<RegisterPageEvents, RegisterPageModel>(
  (ref) => RegisterPageEvents(ref),
);

@freezed
class RegisterPageModel with _$RegisterPageModel {
  const factory RegisterPageModel({
    required bool isCharging,
  }) = _RegisterPageModel;

  factory RegisterPageModel.fromJson(Map<String, dynamic> json) => _$RegisterPageModelFromJson(json);
}

class RegisterPageEvents extends StateNotifier<RegisterPageModel> {
  RegisterPageEvents(this.ref)
      : super(
          const RegisterPageModel(
            isCharging: false,
          ),
        );

  final Ref ref;
}
