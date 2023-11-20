import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wtw_app/core/config/config.dart';
import 'package:wtw_app/core/constants/constants.dart';

Future<void> initConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  await _openBoxesLocalStorage();
}

Future<void> _openBoxesLocalStorage() async {
  await Hive.openBox(LocalStorageConstants.sessionBox);
}
