import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/constants/constants.dart';
import 'package:wtw_app/core/router/router.dart';
import 'package:wtw_app/core/theme/app_theme.dart';

class WTWApp extends ConsumerWidget {
  const WTWApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppTheme(isDarkmode: false).getTheme(),
    );
  }
}
