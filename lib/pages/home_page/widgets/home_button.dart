import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/utils/utils.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.icon,
  });

  final VoidCallback onTap;
  final String label;
  final PhosphorIconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: size.height(context, .065),
            width: size.height(context, .065),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: size.height(context, .01)),
          Text(
            label,
            style: AppStyles.body1.copyWith(
              color: AppColors.typography,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
