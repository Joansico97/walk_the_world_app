import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/city_page/providers/city_provider.dart';
import 'package:wtw_app/pages/city_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class CityViewMobile extends ConsumerWidget {
  const CityViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cityProvider);
    final notifier = ref.watch(cityProvider.notifier);
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: 'Ciudad de méxico',
        isHome: false,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.backgoundWhite,
      floatingActionButton: const AppFloatingButton(),
      body: SafeArea(
        child: Padding(
          padding: size.horizontal(context, .08),
          child: Column(
            children: [
              SizedBox(
                height: size.height(context, .1),
                width: size.fullWidth(context),
                child: Row(
                  children: [
                    Container(
                      height: size.height(context, .07),
                      width: size.height(context, .07),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(.8),
                        borderRadius: size.borderRadius(context, .03),
                      ),
                      child: const Icon(
                        PhosphorIconsRegular.slidersHorizontal,
                        color: AppColors.white,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: size.height(context, .07),
                      width: size.width(context, .62),
                      padding: size.horizontal(context, .02),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(.8),
                        borderRadius: size.borderRadius(context, .03),
                      ),
                      child: TextFormField(
                        controller: notifier.searchConroller,
                        style: AppStyles.heading2.copyWith(
                          color: AppColors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          hintText: 'Buscar',
                          hintStyle: AppStyles.heading2.copyWith(
                            color: AppColors.typography,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppColors.typography,
                          ),
                          suffixIcon: state.isSearching
                              ? IconButton(
                                  onPressed: notifier.cleanSearch,
                                  icon: const Icon(
                                    PhosphorIconsBold.x,
                                    color: AppColors.typography,
                                    size: 20,
                                  ),
                                )
                              : null,
                        ),
                        onChanged: (value) => notifier.onSearch(value),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height(context, .01)),
              SizedBox(
                height: size.height(context, .06),
                width: size.fullWidth(context),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityButton(label: 'Rutas', onTap: () {}),
                    CityButton(label: 'Restaurantes', onTap: () {}),
                  ],
                ),
              ),
              SizedBox(height: size.height(context, .01)),
            ],
          ),
        ),
      ),
    );
  }
}
