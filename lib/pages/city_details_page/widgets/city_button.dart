import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CityButton extends StatelessWidget {
  const CityButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.isActive,
  });

  final String label;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height(context, .06),
        margin: size.right(context, .02),
        padding: size.horizontal(context, .08),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.primary.withOpacity(.8)
              : AppColors.darkWhite,
          borderRadius: size.borderRadius(context, .03),
        ),
        child: Text(
          label,
          style: AppStyles.body1.copyWith(
            color: AppColors.typography,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
