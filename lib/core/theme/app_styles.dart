import 'package:flutter/material.dart';
import 'package:walk_the_world_app/core/extensions/extensions.dart';

import 'app_colors.dart';

class AppStyles {
  AppStyles(this.context);

  final BuildContext context;

  TextStyle get title => TextStyle(
        fontSize: context.sp(24),
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      );

  TextStyle get body => TextStyle(
        fontSize: context.sp(16),
        fontWeight: FontWeight.w400,
        color: AppColors.primary,
      );

  TextStyle get button => TextStyle(
        fontSize: context.sp(16),
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      );
}
