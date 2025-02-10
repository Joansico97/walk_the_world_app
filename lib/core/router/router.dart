import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:walk_the_world_app/injection/injection_container.dart' as injection;

import '../../features/features.dart';

part 'router_handlers.dart';
part 'routes_names.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

class CustomRouter {
  static final _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: RoutesNames.home,
    routes: [
      GoRoute(
        path: RoutesNames.home,
        pageBuilder: _homePageHandler,
        parentNavigatorKey: rootNavigatorKey,
      ),
      GoRoute(
        path: RoutesNames.onBoarding,
        pageBuilder: _onBoardingPageHandler,
        parentNavigatorKey: rootNavigatorKey,
      ),
    ],
  );

  GoRouter get router => _router;
}
