import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/pages/login_page/providers/login_provider.dart';
import 'package:wtw_app/pages/login_page/widgets/widgets.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final notifier = ref.watch(loginProvider.notifier);
    return Form(
      key: notifier.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Correo electrónico',
            isEmail: true,
            isPassword: false,
            isPhone: false,
            icon: Icons.email_outlined,
            controller: notifier.emailController,
            validator: () => notifier.validateEmail(),
          ),
          CustomTextFormField(
            hintText: 'Contraseña',
            isEmail: false,
            isPassword: true,
            isPhone: false,
            isObscure: state.isObscure,
            controller: notifier.passwordController,
            icon: Icons.lock_outline_rounded,
            onTap: () => notifier.changeObscure(),
            validator: () => notifier.validatePassword(),
          ),
        ],
      ),
    );
  }
}
