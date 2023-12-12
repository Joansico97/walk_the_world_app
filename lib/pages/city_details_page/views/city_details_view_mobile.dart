import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/constants/app_constants.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/city_details_page/providers/city_details_provider.dart';

import 'package:wtw_app/pages/city_details_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class CityDetailsViewMobile extends ConsumerWidget {
  const CityDetailsViewMobile({
    Key? key,
    required this.city,
  }) : super(key: key);

  final Map<String, dynamic> city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cityDetailsProvider);
    final notifier = ref.watch(cityDetailsProvider.notifier);
    int length = 3;
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
                            onTap: () {
                              debugPrint('$index');
                            },
                            isActive: index == 0 ? true : false,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: size.height(context, .01)),
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: () =>
                            Future.delayed(const Duration(milliseconds: 5)),
                        color: AppColors.primary,
                        displacement: 0,
                        strokeWidth: 2,
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.only(
                            bottom: length >= 4
                                ? size.height(context, .3)
                                : size.height(context, .03),
                            top: 10,
                          ),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: size.width(context, .02),
                            mainAxisExtent: size.width(context, .4),
                          ),
                          itemCount: length,
                          itemBuilder: (BuildContext context, int index) =>
                              CityBubble(
                            onTap: () => debugPrint('$index'),
                            label: 'Ruta numero $index',
                            image:
                                'https://picsum.photos/id/${index * 100}/200',
                          ),
                        ),
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

class CityBubble extends StatelessWidget {
  const CityBubble({
    super.key,
    required this.onTap,
    required this.label,
    required this.image,
  });

  final VoidCallback onTap;
  final String label;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: size.width(context, .32),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              label,
              style: AppStyles.heading2,
            )
          ],
        ),
      ),
    );
  }
}
