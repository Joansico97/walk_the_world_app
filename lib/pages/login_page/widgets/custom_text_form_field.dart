import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CustomTextFormField extends ConsumerWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.isEmail,
    required this.icon,
    required this.controller,
    required this.isPassword,
    required this.isPhone,
    required this.validator,
    this.isObscure,
    this.onTap,
  });

  final String hintText;
  final bool isEmail;
  final bool isPassword;
  final bool isPhone;
  final IconData icon;
  final TextEditingController controller;
  final Function validator;
  final bool? isObscure;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final locale = ref.watch(locales);
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
                errorStyle: const TextStyle(
                  height: 0,
                ),
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
              validator: (value) => validator(),
            )
          : isPassword
              ? TextFormField(
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
                        isObscure!
                            ? PhosphorIconsBold.eyeClosed
                            : PhosphorIconsBold.eye,
                        color: AppColors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                  validator: (value) => validator(),
                )
              : isPhone
                  ? IntlPhoneField(
                      controller: controller,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: size.width(context, .005),
                          bottom: size.width(context, .01),
                        ),
                        hintText: hintText,
                        hintStyle: AppStyles.heading2.copyWith(
                          color: AppColors.backgoundDark,
                          fontSize: 18,
                        ),
                        errorStyle: const TextStyle(
                          height: 0,
                        ),
                        border: InputBorder.none,
                      ),
                      disableLengthCheck: true,
                      // languageCode: locale.languageCode,
                      initialCountryCode: 'US',
                      dropdownTextStyle: AppStyles.body1.copyWith(
                        color: AppColors.backgoundDark,
                        fontWeight: FontWeight.w700,
                      ),
                      invalidNumberMessage:
                          'Por favor ingresa un número válido',
                      dropdownIconPosition: IconPosition.trailing,
                      dropdownIcon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppColors.darkWhite,
                      ),
                      pickerDialogStyle: PickerDialogStyle(
                        searchFieldInputDecoration: InputDecoration(
                          hintText: 'Buscar país',
                          hintStyle: AppStyles.body1.copyWith(
                            color: AppColors.backgoundDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        countryNameStyle: AppStyles.body1.copyWith(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                        countryCodeStyle: AppStyles.body1.copyWith(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // validator: (p0) => notifier.validatePhone(p0!),
                      validator: (p0) => null,
                    )
                  : TextFormField(
                      controller: controller,
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
                      ),
                      validator: (value) => validator(),
                    ),
    );
  }
}
