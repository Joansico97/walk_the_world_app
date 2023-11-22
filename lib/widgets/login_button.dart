import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return InkWell(
      onTap: () async => router.pushNamed(RoutesNames.login),
      child: Container(
        height: size.height(context, .06),
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: size.width(context, .08)),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              PhosphorIconsRegular.signIn,
              color: AppColors.typography,
            ),
            SizedBox(width: size.width(context, .03)),
            Text(
              'Iniciar Sesión',
              style: AppStyles.body1.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.typography,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
