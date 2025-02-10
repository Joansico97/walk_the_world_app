import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:walk_the_world_app/injection/injection_container.dart' as injection;

import '../core/constants/constants.dart';
import '../core/theme/theme.dart';
import '../core/router/router.dart';
import '../data/repositories/repositories.dart';
import '../gen/l10n.dart';
import 'bloc/app_bloc.dart';

class WalkTheWorldApp extends StatelessWidget {
  const WalkTheWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = CustomRouter().router;
    final appBloc = injection.di<AppBloc>();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ExampleRepository>(
          create: (_) => injection.di<ExampleRepository>(),
        ),
      ],
      child: BlocProvider<AppBloc>(
        create: (_) => appBloc,
        child: BlocBuilder<AppBloc, AppState>(
          builder: (_, state) {
            return MaterialApp.router(
              title: AppConstants.appName,
              theme: AppTheme().getTheme(),
              localizationsDelegates: const [
                IntlTranslations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: state.locale,
              supportedLocales: IntlTranslations.delegate.supportedLocales,
              routerConfig: router,
            );
          },
        ),
      ),
    );
  }
}
