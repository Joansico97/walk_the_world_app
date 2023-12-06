import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/data/providers/providers.dart';

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

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? validateEmail() {
    {
      String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern);
      if (!regex.hasMatch(emailController.text.trim())) {
        return 'Ingrese un correo electrónico válido';
      } else {
        return null;
      }
    }
  }

  String? validatePassword() {
    {
      if (passwordController.text.length <= 5) {
        return 'La contraseña debe ser de más de 6 caracteres';
      } else {
        return null;
      }
    }
  }

  void changeObscure() {
    state = state.copyWith(isObscure: !state.isObscure);
  }

  void cleanControllers() {
    emailController.clear();
    passwordController.clear();
  }

  Future<void> loginWithEmailAndPassword() async {
    final router = ref.read(appRouterProvider);
    if (formKey.currentState!.validate()) {
      final response =
          await ref.read(authProvider).logIn(email: emailController.text, password: passwordController.text);
      response.fold(
        (l) {
          state = state.copyWith(isCharging: false);
          ScaffoldMessenger.of(router.routerDelegate.navigatorKey.currentContext!).showSnackBar(
            SnackBar(
              content: Text(l.message),
              backgroundColor: Colors.red,
            ),
          );
        },
        (r) async {
          await router.pushNamed(RoutesNames.home);
        },
      );
      state = state.copyWith(isCharging: false);
    } else {
      ScaffoldMessenger.of(router.routerDelegate.navigatorKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text('Completa el formulario'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> goToRegister() async {
    final router = ref.read(appRouterProvider);
    await router.pushNamed(RoutesNames.register);
  }
}
