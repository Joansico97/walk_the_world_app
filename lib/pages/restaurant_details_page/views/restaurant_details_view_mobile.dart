import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/restaurant.dart';
import 'package:wtw_app/gen/assets.gen.dart';
// import 'package:wtw_app/pages/restaurant_details_page/providers/restaurant_details_provider.dart';
import 'package:wtw_app/widgets/widgets.dart';

class RestaurantDetailsViewMobile extends ConsumerWidget {
  const RestaurantDetailsViewMobile({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final notifier = ref.watch(restaurantDetailsProvider.notifier);
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
                  child: FadeInImage(
                    placeholder: AssetImage(Assets.images.placeHolder.path),
                    image: NetworkImage(restaurant.img!),
                    fit: BoxFit.cover,
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Restaurante ${restaurant.name!}',
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
