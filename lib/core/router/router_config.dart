import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'routes_names.dart';

part 'router_handlers.dart';

final appRouterProvider = Provider<GoRouter>((ref) => _appRouter);

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final _appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RoutesNames.home,
  routes: [
    GoRoute(
      path: RoutesNames.home,
      parentNavigatorKey: rootNavigatorKey,
      builder: _homeHandler,
    ),
    GoRoute(
      path: RoutesNames.login,
      parentNavigatorKey: rootNavigatorKey,
      builder: _loginHandler,
    ),
    GoRoute(
      path: RoutesNames.register,
      parentNavigatorKey: rootNavigatorKey,
      builder: _registerhHandler,
    ),
  ],
);
