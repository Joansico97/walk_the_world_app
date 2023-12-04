import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/login_page/providers/login_provider.dart';
import 'package:wtw_app/pages/login_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class LoginViewMobile extends ConsumerWidget {
  const LoginViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final notifier = ref.watch(loginProvider.notifier);
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: '',
        isHome: false,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgoundWhite,
      floatingActionButton: const AppFloatingButton(),
      body: SafeArea(
        child: Container(
          height: size.fullHeight(context),
          width: size.fullWidth(context),
          padding: size.horizontal(context, .07),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Text(
                  '¡Bienvenido!',
                  style: AppStyles.heading1.copyWith(
                    color: AppColors.primary,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: size.height(context, .01)),
                Text(
                  'Tenemos las mejores\nrutas para ti',
                  textAlign: TextAlign.center,
                  style: AppStyles.heading1.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: size.height(context, .1)),
                const LoginForm(),
                SizedBox(height: size.height(context, .02)),
                Container(
                  width: size.fullWidth(context),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      '¿Olvidaste tu contraseña?',
                      style: AppStyles.heading3.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height(context, .05)),
                CustomAppButton(
                  onTap: notifier.loginWithEmailAndPassword,
                  label: 'Iniciar sesión',
                  validate: true,
                ),
                SizedBox(height: size.height(context, .02)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: size.width(context, .25),
                      color: AppColors.backgoundDark,
                    ),
                    Text(
                      'O entra con',
                      style: AppStyles.body1.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: size.width(context, .25),
                      color: AppColors.backgoundDark,
                    ),
                  ],
                ),
                SizedBox(height: size.height(context, .02)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SocialIconButton(icon: PhosphorIconsBold.googleLogo, onTap: () {}),
                    SocialIconButton(icon: Icons.facebook_outlined, onTap: () {}),
                  ],
                ),
                SizedBox(height: size.height(context, .05)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No tienes una cuenta?',
                      style: AppStyles.body1.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: size.width(context, .02)),
                    InkWell(
                      onTap: () => notifier.goToRegister(),
                      child: Text(
                        'Regístrate',
                        style: AppStyles.body1.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
