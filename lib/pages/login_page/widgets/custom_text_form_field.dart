import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.isEmail,
    required this.icon,
    required this.controller,
    this.isObscure,
    this.onTap,
  });

  final String hintText;
  final bool isEmail;
  final IconData icon;
  final TextEditingController controller;
  final bool? isObscure;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height(context, .07),
      width: size.fullWidth(context),
      padding: size.horizontal(context, .02),
      margin: size.bottom(context, .05),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.dustyGrey,
        borderRadius: size.borderRadius(context, .1),
      ),
      child: isEmail
          ? TextFormField(
              controller: controller,
              style: AppStyles.heading2.copyWith(
                color: AppColors.backgoundDark,
                fontSize: 18,
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                prefixIcon: Icon(
                  icon,
                  color: AppColors.backgoundDark,
                ),
                hintText: hintText,
                hintStyle: AppStyles.heading2.copyWith(
                  color: AppColors.backgoundDark,
                  fontSize: 18,
                ),
              ),
            )
          : TextFormField(
              controller: controller,
              obscuringCharacter: '*',
              obscureText: isObscure!,
              style: AppStyles.heading2.copyWith(
                color: AppColors.backgoundDark,
                fontSize: 18,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                prefixIcon: Icon(
                  icon,
                  color: AppColors.backgoundDark,
                ),
                hintText: hintText,
                hintStyle: AppStyles.heading2.copyWith(
                  color: AppColors.backgoundDark,
                  fontSize: 18,
                ),
                suffixIcon: IconButton(
                  onPressed: onTap,
                  icon: Icon(
                    isObscure! ? PhosphorIconsRegular.eyeClosed : PhosphorIconsRegular.eye,
                    color: AppColors.grey,
                    size: 20,
                  ),
                ),
              ),
            ),
    );
  }
}
