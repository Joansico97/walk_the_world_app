import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/data/providers/auth_provider.dart';
import 'package:wtw_app/data/providers/database_provider.dart';

part 'register_provider.freezed.dart';
part 'register_provider.g.dart';

final registerProvider =
    StateNotifierProvider<RegisterPageEvents, RegisterPageModel>(
  (ref) => RegisterPageEvents(ref),
);

@freezed
class RegisterPageModel with _$RegisterPageModel {
  const factory RegisterPageModel({
    required bool isCharging,
    required bool isObscure,
    required bool isRepObscure,
  }) = _RegisterPageModel;

  factory RegisterPageModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterPageModelFromJson(json);
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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
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

  void clear() {
    nameController.clear();
    lastNameController.clear();
    emailController.clear();
    passwordController.clear();
    repPasswordController.clear();
  }

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

  String? validateRepPassword() {
    {
      if (repPasswordController.text != passwordController.text) {
        return 'Las contraseñas no coinciden';
      } else {
        return null;
      }
    }
  }

  String? validateName() {
    {
      if (nameController.text.length <= 2) {
        return 'Ingrese un nombre válido';
      } else {
        return null;
      }
    }
  }

  String? validateLastName() {
    {
      if (lastNameController.text.length <= 2) {
        return 'Ingrese un nombre válido';
      } else {
        return null;
      }
    }
  }

  Future<void> register() async {
    final router = ref.read(appRouterProvider);
    if (formKey.currentState!.validate()) {
      final register = await ref.read(authProvider).register(
            email: emailController.text,
            password: passwordController.text,
          );
      register.fold(
          (left) => ScaffoldMessenger.of(
                      router.routerDelegate.navigatorKey.currentContext!)
                  .showSnackBar(
                SnackBar(
                  content: Text(register.left.message),
                ),
              ), (right) async {
        final refId = ref.read(databaseProvider).createId(collection: 'Users');
        final Map<String, dynamic> user = {
          'id': refId.right,
          'name': nameController.text,
          'lastName': lastNameController.text,
          'fullName': '${nameController.text} ${lastNameController.text}',
          'email': emailController.text,
          'userImage':
              "https://firebasestorage.googleapis.com/v0/b/stoyco-develop.appspot.com/o/user.png?alt=media&token=66adfa38-e9dc-43a2-ac4c-d9ee4b44d213"
        };
        final create = await ref
            .read(databaseProvider)
            .post(document: user, table: 'Users');
        create.fold(
          (left) => ScaffoldMessenger.of(
                  router.routerDelegate.navigatorKey.currentContext!)
              .showSnackBar(
            SnackBar(
              content: Text(create.left.message),
            ),
          ),
          (right) async => await ref
              .read(authProvider)
              .logIn(
                email: emailController.text,
                password: passwordController.text,
              )
              .whenComplete(
            () async {
              clear();
              await router.pushNamed(RoutesNames.home);
            },
          ),
        );
      });
    }
  }
}
