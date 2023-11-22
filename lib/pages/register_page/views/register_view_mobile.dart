import 'package:flutter/material.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/widgets/widgets.dart';

class RegisterViewMobile extends StatelessWidget {
  const RegisterViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: '',
        isHome: false,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.dustyGrey,
      floatingActionButton: const AppFloatingButton(),
      body: SafeArea(
        child: SizedBox(
          height: size.fullHeight(context),
          width: size.fullWidth(context),
          child: Column(
            children: [
              Container(
                width: size.fullWidth(context),
                alignment: Alignment.center,
                child: Text(
                  'Crea una cuenta',
                  style: AppStyles.heading1.copyWith(
                    color: AppColors.primary,
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
