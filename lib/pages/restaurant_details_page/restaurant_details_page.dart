import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/restaurant.dart';
import 'package:wtw_app/pages/restaurant_details_page/views/views.dart';

class RestaurantDetailsPage extends BasePage {
  const RestaurantDetailsPage({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  mobileBody(BuildContext context) {
    return RestaurantDetailsViewMobile(restaurant: restaurant);
  }
}
