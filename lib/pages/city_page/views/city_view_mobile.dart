import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/constants/constants.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/providers/auth_provider.dart';
import 'package:wtw_app/widgets/widgets.dart';

class CityViewMobile extends ConsumerWidget {
  const CityViewMobile({
    Key? key,
    required this.city,
  }) : super(key: key);

  final Map<String, dynamic> city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider);
    final router = ref.watch(appRouterProvider);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            city['img'],
          ),
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
          title: city['name'],
          isCity: true,
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
                      height: size.height(context, .4),
                      width: size.height(context, .4),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                      child: Text(
                        city['name'],
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
                    user.getCurrentUser().right == null
                        ? await router.pushNamed(RoutesNames.login)
                        : debugPrint('unlock');
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
                top: size.height(context, .45),
                child: Container(
                  height: size.height(context, .15),
                  padding: size.horizontal(context, .1),
                  width: size.fullWidth(context),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppConstants.categories.length,
                    itemBuilder: (context, index) {
                      return CityButton(
                        label: AppConstants.categories[index],
                        city: city,
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: size.height(context, .65),
                child: user.getCurrentUser().right != null
                    ? const SizedBox()
                    : const LoginButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityButton extends ConsumerWidget {
  const CityButton({
    super.key,
    required this.label,
    required this.city,
  });

  final String label;
  final Map<String, dynamic> city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return InkWell(
      onTap: () async => await router.pushNamed(
        RoutesNames.cityDetails,
        extra: {
          'city': city,
        },
      ),
      child: Container(
        height: size.height(context, .15),
        width: size.height(context, .15),
        margin: size.right(context, .05),
        padding: size.all(context, .01),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.darkWhite,
        ),
        child: AutoSizeText(
          label,
          maxLines: 1,
          style: AppStyles.body1.copyWith(
            fontSize: size.width(context, .05),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
