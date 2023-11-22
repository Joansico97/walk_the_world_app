import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
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
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.65),
              shape: BoxShape.circle,
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
