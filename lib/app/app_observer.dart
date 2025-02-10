import 'package:bloc/bloc.dart';

import '../core/utils/utils.dart';

class AppObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    logger.debug('Created (${bloc.runtimeType})');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger.debug('Changed (${bloc.runtimeType}, $change)');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    logger.debug('Closed (${bloc.runtimeType})');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.error('Error (${bloc.runtimeType}, $error, $stackTrace)');
    // TODO: Handle errors (Crashlytics, Sentry, etc.)
  }
}
