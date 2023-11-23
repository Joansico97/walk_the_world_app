import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height(context, .07),
        width: size.height(context, .07),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: size.borderRadius(context, .03),
        ),
        child: Icon(
          icon,
          color: AppColors.typography,
          size: 35,
        ),
      ),
    );
  }
}
