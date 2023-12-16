import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/models/remote_models/city_model/city_model.dart';
import 'package:wtw_app/pages/city_page/views/views.dart';

class CityPage extends BasePage {
  const CityPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  final CityModel city;

  @override
  mobileBody(BuildContext context) {
    return CityViewMobile(
      city: city,
    );
  }
}
