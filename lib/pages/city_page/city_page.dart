import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/city_page/views/views.dart';

class CityPage extends BasePage {
  const CityPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  final Map<String, dynamic> city;

  @override
  mobileBody(BuildContext context) {
    return CityViewMobile(
      city: city,
    );
  }
}
