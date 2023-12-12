import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/city_details_page/views/views.dart';

class CityDetailsPage extends BasePage {
  const CityDetailsPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  final Map<String, dynamic> city;

  @override
  mobileBody(BuildContext context) {
    return CityDetailsViewMobile(city: city);
  }
}
