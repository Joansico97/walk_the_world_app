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
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Correo electrónico',
            isEmail: true,
            icon: Icons.email_outlined,
            controller: notifier.emailController,
          ),
          CustomTextFormField(
            hintText: 'Contraseña',
            isEmail: false,
            isObscure: state.isObscure,
            controller: notifier.passwordController,
            icon: Icons.lock_outline_rounded,
            onTap: () => notifier.changeObscure(),
          ),
        ],
      ),
    );
  }
}
