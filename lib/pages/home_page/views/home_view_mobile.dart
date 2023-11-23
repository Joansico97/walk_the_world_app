import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/gen/assets.gen.dart';
import 'package:wtw_app/pages/home_page/widgets/widgets.dart';
import 'package:wtw_app/widgets/widgets.dart';

class HomeViewMobile extends ConsumerWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.home.path),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(.3),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: const AppFloatingButton(),
        appBar: CustomAppBar(
          context: context,
          title: '',
          isHome: true,
        ),
        extendBodyBehindAppBar: true,
        body: SizedBox(
          height: size.fullHeight(context),
          width: size.fullWidth(context),
          child: SafeArea(
            child: Stack(
              children: [
                const HomeBody(),
                Positioned(
                  right: 0,
                  top: size.height(context, .65),
                  child: const LoginButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
