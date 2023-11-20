import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/home_page/views/views.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const HomeViewMobile();
  }
}
