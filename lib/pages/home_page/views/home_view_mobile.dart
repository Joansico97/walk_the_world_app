import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:wtw_app/data/providers/theme_provider.dart';

class HomeViewMobile extends ConsumerWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(isDarkModeProvider.notifier).changeTheme(!isDarkMode),
        child: Icon(
          isDarkMode ? PhosphorIconsRegular.moon : PhosphorIconsRegular.sun,
        ),
      ),
      body: const Center(
        child: Text('HomeViewMobile'),
      ),
    );
  }
}
