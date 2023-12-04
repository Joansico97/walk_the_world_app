import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/providers/auth_provider.dart';
import 'package:wtw_app/gen/assets.gen.dart';
import 'package:wtw_app/widgets/widgets.dart';

class CityViewMobile extends ConsumerWidget {
  const CityViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider);
    final router = ref.watch(appRouterProvider);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.cali.path),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(.3),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        appBar: CustomAppBar(
          context: context,
          title: 'Cali',
          isHome: false,
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        floatingActionButton: const AppFloatingButton(),
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                height: size.fullHeight(context),
                width: size.fullWidth(context),
                child: Column(
                  children: [
                    SizedBox(height: size.height(context, .1)),
                    Container(
                      height: size.height(context, .3),
                      width: size.height(context, .3),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: Text(
                        'Cali',
                        style: AppStyles.heading1.copyWith(
                          fontSize: size.width(context, .1),
                          color: AppColors.typography,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.fullHeight(context),
                width: size.fullWidth(context),
              ),
              Positioned(
                right: size.width(context, .12),
                top: size.height(context, .1),
                child: InkWell(
                  onTap: () async {
                    user.getCurrentUser().right == null ? await router.pushNamed(RoutesNames.login) : print('unlock');
                  },
                  child: Container(
                    height: size.height(context, .1),
                    width: size.height(context, .1),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.darkWhite,
                    ),
                    child: const Icon(
                      PhosphorIconsBold.lock,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: size.height(context, .65),
                child: user.getCurrentUser().right != null ? const SizedBox() : const LoginButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
