import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/core/router/router.dart';

part 'register_provider.freezed.dart';
part 'register_provider.g.dart';

final registerProvider = StateNotifierProvider<RegisterPageEvents, RegisterPageModel>(
  (ref) => RegisterPageEvents(ref),
);

@freezed
class RegisterPageModel with _$RegisterPageModel {
  const factory RegisterPageModel({
    required bool isCharging,
    required bool isObscure,
    required bool isRepObscure,
  }) = _RegisterPageModel;

  factory RegisterPageModel.fromJson(Map<String, dynamic> json) => _$RegisterPageModelFromJson(json);
}

class RegisterPageEvents extends StateNotifier<RegisterPageModel> {
  RegisterPageEvents(this.ref)
      : super(
          const RegisterPageModel(
            isCharging: false,
            isObscure: true,
            isRepObscure: true,
          ),
        );

  final Ref ref;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repPasswordController = TextEditingController();

  void changeObscure() {
    state = state.copyWith(isObscure: !state.isObscure);
  }

  void changeRepObscure() {
    state = state.copyWith(isRepObscure: !state.isRepObscure);
  }

  Future<void> goToLogin() async {
    final router = ref.read(appRouterProvider);
    await router.pushNamed(RoutesNames.login);
  }
}
