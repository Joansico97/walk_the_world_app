import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/home_page/provider/home_provider.dart';
import 'package:wtw_app/pages/home_page/widgets/widgets.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final state = ref.watch(homeProvider);
    final notifier = ref.watch(homeProvider.notifier);
    return Padding(
      padding: size.horizontal(context, .1),
      child: Column(
        children: [
          Container(
            width: size.fullWidth(context),
            margin: size.top(context, .1),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Walk',
                      style: AppStyles.heading1.copyWith(
                        fontSize: size.width(context, .11),
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'the World',
                      style: AppStyles.heading1.copyWith(
                        fontSize: size.width(context, .12),
                        height: size.width(context, .0014),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height(context, .1)),
          Container(
            height: size.height(context, .07),
            width: size.fullWidth(context),
            padding: size.horizontal(context, .02),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.backgoundWhite.withOpacity(.5),
              borderRadius: size.borderRadius(context, .1),
            ),
            child: TextFormField(
              controller: notifier.searchConroller,
              style: AppStyles.heading2.copyWith(
                color: AppColors.primary,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.primary,
                ),
                suffixIcon: state.isSearching
                    ? IconButton(
                        onPressed: notifier.cleanSearch,
                        icon: const Icon(
                          PhosphorIconsBold.x,
                          color: AppColors.primary,
                          size: 20,
                        ),
                      )
                    : null,
                hintText: 'Elige tu ciudad',
                hintStyle: AppStyles.heading2.copyWith(
                  color: AppColors.primary,
                ),
              ),
              onChanged: (value) => notifier.onSearch(value),
            ),
          ),
          SizedBox(height: size.height(context, .05)),
          state.isSearching
              ? Text(
                  notifier.searchConroller.text,
                  style: AppStyles.body1.copyWith(
                    color: AppColors.typography,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : SizedBox(
                  width: size.fullWidth(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      HomeButton(
                        label: 'Todas las rutas',
                        onTap: () => router.pushNamed(RoutesNames.city),
                        icon: PhosphorIconsBold.footprints,
                      ),
                      SizedBox(width: size.width(context, .15)),
                      HomeButton(
                        label: 'Cerca de ti',
                        onTap: () {},
                        icon: PhosphorIconsBold.navigationArrow,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
