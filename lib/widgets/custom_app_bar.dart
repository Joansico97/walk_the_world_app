import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.context,
    required this.title,
    required this.isHome,
  });
  final BuildContext context;
  final String title;
  final bool isHome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return Container(
      height: size.height(context, .12),
      width: size.fullWidth(context),
      padding: size.horizontal(context, .08),
      alignment: Alignment.bottomCenter,
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isHome
              ? const SizedBox()
              : Container(
                  padding: size.all(context, .01),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(.8),
                    borderRadius: size.borderRadius(context, .03),
                  ),
                  child: IconButton(
                    onPressed: () => router.pop(),
                    icon: const Icon(
                      PhosphorIconsBold.arrowLeft,
                      color: AppColors.typography,
                    ),
                  ),
                ),
          const Spacer(),
          Text(
            title,
            style: AppStyles.heading2,
          ),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size.height(context, .12));
}
