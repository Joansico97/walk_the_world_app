import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.validate,
  });

  final VoidCallback onTap;
  final String label;
  final bool validate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: validate ? onTap : null,
      child: Container(
        height: size.height(context, .06),
        width: size.fullWidth(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: validate ? AppColors.primary : AppColors.dustyGrey,
          borderRadius: size.borderRadius(context, .1),
        ),
        child: Text(
          label,
          style: AppStyles.heading3.copyWith(
            color: validate ? AppColors.typography : AppColors.backgoundDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
