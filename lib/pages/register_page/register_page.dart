import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/pages/register_page/views/views.dart';

class RegisterPage extends BasePage {
  const RegisterPage({super.key});

  @override
  mobileBody(BuildContext context) {
    return const RegisterViewMobile();
  }
}
