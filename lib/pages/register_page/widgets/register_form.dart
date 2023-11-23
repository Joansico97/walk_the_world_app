import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/pages/login_page/widgets/widgets.dart';
import 'package:wtw_app/pages/register_page/providers/register_provider.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerProvider);
    final notifier = ref.watch(registerProvider.notifier);
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Nombre completo',
            isEmail: false,
            isPassword: false,
            isPhone: false,
            icon: Icons.person_outline_rounded,
            controller: notifier.nameController,
          ),
          CustomTextFormField(
            hintText: 'Correo electrónico',
            isEmail: true,
            isPassword: false,
            isPhone: false,
            icon: Icons.email_outlined,
            controller: notifier.emailController,
          ),
          CustomTextFormField(
            hintText: 'Teléfono',
            isEmail: false,
            isPassword: false,
            isPhone: true,
            icon: Icons.phone_outlined,
            controller: notifier.phoneController,
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
          ),
          CustomTextFormField(
            hintText: 'Confirmar contraseña',
            isEmail: false,
            isPassword: true,
            isPhone: false,
            isObscure: state.isRepObscure,
            controller: notifier.repPasswordController,
            icon: Icons.lock_outline_rounded,
            onTap: () => notifier.changeRepObscure(),
          ),
        ],
      ),
    );
  }
}
