part of 'router.dart';

Page<Widget> _homePageHandler(BuildContext context, GoRouterState state) {
  return NoTransitionPage(
    child: BlocProvider(
      create: (_) => injection.di<HomeBloc>(),
      child: const HomePage(),
    ),
  );
}

// Page<Widget> _onBoardingPageHandler(BuildContext context, GoRouterState state) {
//   return CustomTransitionPage(
//     key: state.pageKey,
//     child: BlocProvider(
//       create: (_) => injection.di<OnBoardingBloc>(),
//       child: const OnBoardingPage(),
//     ),
//     transitionDuration: Duration(milliseconds: 500),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(1.0, 0.0);
//       const end = Offset.zero;
//       const curve = Curves.easeInOut;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//       var offsetAnimation = animation.drive(tween);

//       return SlideTransition(position: offsetAnimation, child: child);
//     },
//   );
// }

// Page<Widget> _loginPageHandler(BuildContext context, GoRouterState state) {
//   return NoTransitionPage(
//     child: BlocProvider(
//       create: (_) => LoginBloc(),
//       child: const LoginPage(),
//     ),
//   );
// }

// Page<Widget> _registerPageHandler(BuildContext context, GoRouterState state) {
//   return NoTransitionPage(
//     child: BlocProvider(
//       create: (_) => RegisterBloc(),
//       child: const RegisterPage(),
//     ),
//   );
// }

// Page<Widget> _splashPageHandler(BuildContext context, GoRouterState state) {
//   return NoTransitionPage(
//     child: BlocProvider(
//       create: (_) => injection.di<SplashBloc>(),
//       child: const SplashPage(),
//     ),
//   );
// }
