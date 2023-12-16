part of 'router_config.dart';

Widget _homeHandler(BuildContext context, GoRouterState state) {
  return const HomePage();
}

Widget _loginHandler(BuildContext context, GoRouterState state) {
  return const LoginPage();
}

Widget _registerhHandler(BuildContext context, GoRouterState state) {
  return const RegisterPage();
}

Widget _cityDetailsHandler(BuildContext context, GoRouterState state) {
  final data = state.extra as Map<String, dynamic>;
  return CityDetailsPage(
    city: data['city'],
  );
}

Widget _cityHandler(BuildContext context, GoRouterState state) {
  final data = state.extra as Map<String, dynamic>;
  return CityPage(
    city: data['city'],
  );
}

Widget _routeDetailsHandler(BuildContext context, GoRouterState state) {
  final data = state.extra as Map<String, dynamic>;
  return RouteDetailsPage(
    route: data['route'],
  );
}

Widget _restaurantDetailsHandler(BuildContext context, GoRouterState state) {
  final data = state.extra as Map<String, dynamic>;
  return RestaurantDetailsPage(
    restaurant: data['restaurant'],
  );
}
