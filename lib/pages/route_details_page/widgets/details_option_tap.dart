import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class DetailsOptionTap extends StatelessWidget {
  const DetailsOptionTap({
    super.key,
    required this.label,
    required this.onTap,
    required this.isActive,
    required this.isLast,
  });

  final String label;
  final VoidCallback onTap;
  final bool isActive;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height(context, .05),
        width: size.width(context, .25),
        margin: isLast ? null : size.right(context, .05),
        alignment: Alignment.bottomCenter,
        padding: size.bottom(context, .01),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? AppColors.primary : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: AutoSizeText(
          label,
          style: AppStyles.body1.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
