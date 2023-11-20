import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/app.dart';
import 'package:wtw_app/core/config/config.dart';

Future<void> main() async {
  await initConfig();

  runApp(
    const ProviderScope(
      child: WTWApp(),
    ),
  );
}
