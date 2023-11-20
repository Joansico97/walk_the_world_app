import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/size.dart';
import 'package:wtw_app/core/utils/styles.dart';
import 'package:wtw_app/widgets/widgets.dart';

class HomeViewMobile extends ConsumerWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: '',
        isHome: true,
      ),
      body: SafeArea(
        child: Container(
          height: size.fullHeight(context),
          width: size.fullWidth(context),
          padding: size.horizontal(context, .1),
          child: Column(
            children: [
              Container(
                width: size.fullWidth(context),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.red,
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Walk',
                          style: AppStyles.heading1.copyWith(
                            fontSize: size.width(context, .1),
                          ),
                        ),
                        Text(
                          'the World',
                          style: AppStyles.heading1.copyWith(
                            fontSize: size.width(context, .12),
                            height: size.width(context, .0014),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
