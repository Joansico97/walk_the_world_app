import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';
import 'package:wtw_app/data/providers/auth_provider.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.context,
    required this.title,
    required this.isHome,
    this.isCity,
  });
  final BuildContext context;
  final String title;
  final bool isHome;
  final bool? isCity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final user = ref.watch(authProvider);
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
            style: AppStyles.heading2.copyWith(
              color: isCity != null ? AppColors.typography : AppColors.primary,
              fontSize: size.width(context, .06),
            ),
          ),
          const Spacer(),
          user.getCurrentUser().right != null
              ? InkWell(
                  onTap: () {},
                  child: Container(
                    height: size.height(context, .06),
                    width: size.height(context, .06),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(.8),
                      borderRadius: size.borderRadius(context, .03),
                    ),
                    child: const Icon(
                      PhosphorIconsBold.list,
                      color: AppColors.typography,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size.height(context, .12));
}
