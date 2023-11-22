import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/login_page/views/views.dart';

class LoginPage extends BasePage {
  const LoginPage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const LoginViewMobile();
  }
}
