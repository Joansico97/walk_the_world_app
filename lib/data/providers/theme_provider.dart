import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../core/constants/constants.dart';

final isDarkModeProvider = NotifierProvider<_IsDarkModeProvider, bool>(
  () => _IsDarkModeProvider(),
);

class _IsDarkModeProvider extends Notifier<bool> {
  @override
  bool build() {
    final sessionBox = Hive.box(LocalStorageConstants.sessionBox).get(LocalStorageConstants.darkModeKey);
    final bool defaultDarkTheme = sessionBox ?? false;
    return defaultDarkTheme;
  }

  changeTheme(bool isDarkMode) async {
    final sessionExpDate = Hive.box(LocalStorageConstants.sessionBox);
    await sessionExpDate.put(LocalStorageConstants.darkModeKey, isDarkMode);
    state = isDarkMode;
  }
}
