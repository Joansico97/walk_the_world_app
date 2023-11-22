import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/core/router/router.dart';

part 'login_provider.freezed.dart';
part 'login_provider.g.dart';

final loginProvider = StateNotifierProvider<LoginPageEvents, LoginPageModel>(
  (ref) => LoginPageEvents(ref),
);

@freezed
class LoginPageModel with _$LoginPageModel {
  const factory LoginPageModel({
    required bool isCharging,
    required bool isObscure,
  }) = _LoginPageModel;

  factory LoginPageModel.fromJson(Map<String, dynamic> json) => _$LoginPageModelFromJson(json);
}

class LoginPageEvents extends StateNotifier<LoginPageModel> {
  LoginPageEvents(this.ref)
      : super(
          const LoginPageModel(
            isCharging: false,
            isObscure: true,
          ),
        );

  final Ref ref;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void changeObscure() {
    state = state.copyWith(isObscure: !state.isObscure);
  }

  void loginWithEmailAndPassword() {
    debugPrint('Email: ${emailController.text}');
    debugPrint('Password: ${passwordController.text}');
  }

  Future<void> goToRegister() async {
    final router = ref.read(appRouterProvider);
    await router.pushNamed(RoutesNames.register);
  }
}
