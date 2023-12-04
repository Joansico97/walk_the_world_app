import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/utils/utils.dart';

class AppFloatingButton extends ConsumerWidget {
  const AppFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return FloatingActionButton(
      onPressed: () async {
        await router.pushNamed(RoutesNames.home);
      },
      elevation: 0,
      tooltip: 'Ir al inicio',
      backgroundColor: AppColors.primary,
      child: const Icon(
        PhosphorIconsBold.house,
        color: AppColors.typography,
        size: 32,
      ),
    );
  }
}
