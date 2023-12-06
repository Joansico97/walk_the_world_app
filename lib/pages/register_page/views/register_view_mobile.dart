import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/register_page/providers/register_provider.dart';
import 'package:wtw_app/pages/register_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class RegisterViewMobile extends ConsumerWidget {
  const RegisterViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerProvider);
    final notifier = ref.watch(registerProvider.notifier);
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: '',
        isHome: false,
      ),
      // extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgoundWhite,
      floatingActionButton: const AppFloatingButton(),
      body: Container(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        padding: size.horizontal(context, .07),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height(context, .02)),
              Container(
                width: size.fullWidth(context),
                alignment: Alignment.center,
                child: Text(
                  'Crea una cuenta',
                  style: AppStyles.heading1.copyWith(
                    color: AppColors.primary,
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(height: size.height(context, .02)),
              const RegisterForm(),
              SizedBox(height: size.height(context, .02)),
              CustomAppButton(
                onTap: notifier.register,
                label: 'Registrarse',
                validate: true,
              ),
              SizedBox(height: size.height(context, .02)),
              Text(
                'Al registrarte, estas aceptando los términos de servicio, las pautas y ha leído la Política de privacidad.',
                textAlign: TextAlign.center,
                style: AppStyles.body3.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
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
                    'O regístrate con',
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
                ],
              ),
              SizedBox(height: size.height(context, .02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Ya tienes una cuenta?',
                    style: AppStyles.body1.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: size.width(context, .02)),
                  InkWell(
                    onTap: () => notifier.goToLogin(),
                    child: Text(
                      'Inicia sesión',
                      style: AppStyles.body1.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .05)),
            ],
          ),
        ),
      ),
    );
  }
}
