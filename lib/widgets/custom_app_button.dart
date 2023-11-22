import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.onTap,
    required this.label,
  });

  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height(context, .06),
        width: size.fullWidth(context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: size.borderRadius(context, .1),
        ),
        child: Text(
          label,
          style: AppStyles.heading3.copyWith(
            color: AppColors.typography,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
