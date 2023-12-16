import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/route.dart';
import 'package:wtw_app/pages/route_details_page/views/views.dart';

class RouteDetailsPage extends BasePage {
  const RouteDetailsPage({
    Key? key,
    required this.route,
  }) : super(key: key);

  final RouteModel route;

  @override
  mobileBody(BuildContext context) {
    return RouteDetailsViewMobile(route: route);
  }
}
