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
      key: notifier.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Nombres',
            isEmail: false,
            isPassword: false,
            isPhone: false,
            icon: Icons.person_outline_rounded,
            controller: notifier.nameController,
            validator: () => notifier.validateName(),
          ),
          CustomTextFormField(
            hintText: 'Apellidos',
            isEmail: false,
            isPassword: false,
            isPhone: false,
            icon: Icons.person_outline_rounded,
            controller: notifier.lastNameController,
            validator: () => notifier.validateLastName(),
          ),
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
          CustomTextFormField(
            hintText: 'Confirmar contraseña',
            isEmail: false,
            isPassword: true,
            isPhone: false,
            isObscure: state.isRepObscure,
            controller: notifier.repPasswordController,
            icon: Icons.lock_outline_rounded,
            onTap: () => notifier.changeRepObscure(),
            validator: () => notifier.validateRepPassword(),
          ),
        ],
      ),
    );
  }
}
