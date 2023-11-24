import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/city_page/views/views.dart';

class CityPage extends BasePage {
  const CityPage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const CityViewMobile();
  }
}
