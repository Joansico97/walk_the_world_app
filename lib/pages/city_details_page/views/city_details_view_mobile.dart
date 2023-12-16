import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/constants/app_constants.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/city_model.dart';
import 'package:wtw_app/pages/city_details_page/providers/city_details_provider.dart';

import 'package:wtw_app/pages/city_details_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class CityDetailsViewMobile extends ConsumerWidget {
  const CityDetailsViewMobile({
    Key? key,
    required this.city,
  }) : super(key: key);

  final CityModel city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cityDetailsProvider);
    final notifier = ref.watch(cityDetailsProvider.notifier);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            city.img!,
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
          title: city.name!,
          isHome: false,
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        floatingActionButton: const AppFloatingButton(),
        body: Stack(
          children: [
            Container(
              height: size.fullHeight(context),
              width: size.fullWidth(context),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.white,
                    Colors.white.withOpacity(.3),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SafeArea(
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
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: AppConstants.categories.length,
                        itemBuilder: (context, index) {
                          return CityButton(
                            label: AppConstants.categories[index],
                            onTap: () => notifier.changeTab(index),
                            isActive: state.isSelected[index],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: size.height(context, .01)),
                    Expanded(
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: AppConstants.categories.length,
                        controller: notifier.pageController,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return RoutePageView(city: city);
                          }
                          if (index == 1) {
                            return RestaurantPageView(city: city);
                          } else {
                            return Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Ciudad sin hoteles disponibles',
                                style: AppStyles.heading1,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
