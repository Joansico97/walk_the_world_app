import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wtw_app/pages/pages.dart';

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
      name: RoutesNames.home,
      parentNavigatorKey: rootNavigatorKey,
      builder: _homeHandler,
    ),
    GoRoute(
      path: RoutesNames.login,
      name: RoutesNames.login,
      parentNavigatorKey: rootNavigatorKey,
      builder: _loginHandler,
    ),
    GoRoute(
      path: RoutesNames.register,
      name: RoutesNames.register,
      parentNavigatorKey: rootNavigatorKey,
      builder: _registerhHandler,
    ),
    GoRoute(
      path: RoutesNames.city,
      name: RoutesNames.city,
      parentNavigatorKey: rootNavigatorKey,
      builder: _cityhHandler,
    ),
  ],
);
