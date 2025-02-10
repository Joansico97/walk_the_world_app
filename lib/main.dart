import 'package:flutter/material.dart';
import 'package:walk_the_world_app/injection/injection_container.dart' as injection;

import 'app/app.dart';
import 'core/config/config.dart';

Future<void> main() async {
  await initConfig();
  await initStorage();
  await initObservers();
  await injection.initInjections();
  runApp(const WalkTheWorldApp());
}
