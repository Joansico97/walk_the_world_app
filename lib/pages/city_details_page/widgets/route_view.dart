import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/city_model.dart';
import 'package:wtw_app/pages/city_details_page/providers/city_details_provider.dart';
import 'package:wtw_app/pages/city_details_page/widgets/widgets.dart';

class RoutePageView extends ConsumerWidget {
  const RoutePageView({
    super.key,
    required this.city,
  });

  final CityModel city;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(cityDetailsProvider.notifier);
    return RefreshIndicator(
      onRefresh: () => Future.delayed(const Duration(milliseconds: 5)),
      color: AppColors.primary,
      displacement: 0,
      strokeWidth: 2,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(
          bottom: city.routes!.length >= 4 ? size.height(context, .3) : size.height(context, .03),
          top: 10,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: size.width(context, .02),
          mainAxisExtent: size.width(context, .46),
        ),
        itemCount: city.routes!.length,
        itemBuilder: (BuildContext context, int index) => CityBubble(
          onTap: () => notifier.goToRouteDetails(city.routes![index]),
          label: 'Ruta ${city.routes![index].name!}',
          image: city.routes![index].img!,
        ),
      ),
    );
  }
}
