import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/city_details_page/views/views.dart';

class CityDetailsPage extends BasePage {
  const CityDetailsPage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const CityDetailsViewMobile();
  }
}
