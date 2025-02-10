import 'package:get_it/get_it.dart';

import '../app/bloc/app_bloc.dart';
import '../data/repositories/repositories.dart';
import '../data/resources/resources.dart';
import '../features/features.dart';
import '../helpers/helpers.dart';

part './network_injection.dart';
part './repositories_injection.dart';
part './blocs_injection.dart';

final di = GetIt.instance;

Future<void> initInjections() async {
  _initNetworkInjection();
  _initRepositoriesInjection();
  _initBlocsInjection();
}
