import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/route.dart';
import 'package:wtw_app/gen/assets.gen.dart';
import 'package:wtw_app/pages/route_details_page/providers/route_details_provider.dart';
import 'package:wtw_app/pages/route_details_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class RouteDetailsViewMobile extends ConsumerWidget {
  const RouteDetailsViewMobile({
    Key? key,
    required this.route,
  }) : super(key: key);

  final RouteModel route;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(routeDetailsProvider);
    final notifier = ref.watch(routeDetailsProvider.notifier);
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: '',
        isHome: false,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            height: size.fullHeight(context),
            width: size.fullWidth(context),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: PageView.builder(
                    onPageChanged: (index) => notifier.changeIndex(index),
                    itemCount: route.points!.length,
                    itemBuilder: (context, index) => SizedBox(
                      child: FadeInImage(
                        placeholder: AssetImage(Assets.images.placeHolder.path),
                        image: NetworkImage(route.points![index].img!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
          Positioned(
            bottom: size.height(context, .51),
            right: 45,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 100, right: 100),
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List<Widget>.generate(
                  route.points!.length,
                  (i) => Icon(
                    Icons.circle,
                    color: state.index == i ? Colors.white : Colors.white60,
                    size: state.index == i ? 11 : 10,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.fullHeight(context),
            width: size.fullWidth(context),
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  child: Container(
                    padding: size.all(context, .06),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(size.width(context, .1)),
                        topRight: Radius.circular(size.width(context, .1)),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Ruta ${route.name!}',
                                  style: AppStyles.heading1.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: size.height(context, .01)),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    SizedBox(width: size.width(context, .01)),
                                    Text(
                                      '4.5',
                                      style: AppStyles.body1.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Ver ruta',
                                style: AppStyles.body1.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: size.height(context, .01)),
                        Container(
                          height: size.height(context, .05),
                          width: size.fullWidth(context),
                          alignment: Alignment.center,
                          child: ListView.builder(
                            padding: size.horizontal(context, .01),
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: notifier.labels.length,
                            itemBuilder: (context, index) => DetailsOptionTap(
                              label: notifier.labels[index],
                              onTap: () => notifier.changeTab(index),
                              isActive: state.isActive[index],
                              isLast: index == 2 ? true : false,
                            ),
                          ),
                        ),
                        SizedBox(height: size.height(context, .02)),
                        Expanded(
                          child: PageView.builder(
                            controller: notifier.pageController,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return DescriptionTap(
                                  description: route.description!,
                                );
                              } else if (index == 1) {
                                return PointsOfInterestTap(
                                  points: route.points!,
                                );
                              }
                              return const CommentTap();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
