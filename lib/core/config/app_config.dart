import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wtw_app/core/config/config.dart';
import 'package:wtw_app/core/constants/constants.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_city_model.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_point.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_restaurant.dart';
import 'package:wtw_app/data/models/local_models/local_city_model/local_route.dart';
import 'package:wtw_app/data/models/local_models/local_user_model/ed_route.dart';
import 'package:wtw_app/data/models/local_models/local_user_model/local_user_model.dart';

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
  Hive.registerAdapter<LocalCityModel>(LocalCityModelAdapter());
  Hive.registerAdapter<LocalPoints>(LocalPointsAdapter());
  Hive.registerAdapter<LocalRestaurant>(LocalRestaurantAdapter());
  Hive.registerAdapter<LocalRoute>(LocalRouteAdapter());
  Hive.registerAdapter<EdRoute>(EdRouteAdapter());
  Hive.registerAdapter<LocalUserModel>(LocalUserModelAdapter());
}
