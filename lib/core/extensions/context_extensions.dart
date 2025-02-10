import 'package:flutter/material.dart';

import '../../gen/l10n.dart';
import '../theme/theme.dart';

extension ContextExtensions on BuildContext {
  // This is the base width of the design
  static const double baseWidth = 393;

  IntlTranslations get locale => IntlTranslations.of(this);
  ThemeData get theme => Theme.of(this);
  AppStyles get styles => AppStyles(this);
  double sp(double pixel) => (pixel / baseWidth) * MediaQuery.of(this).size.width;
  double get fullWidth => MediaQuery.of(this).size.width;
  double get fullHeight => MediaQuery.of(this).size.height;

  EdgeInsets get screenPadding => MediaQuery.of(this).padding;
}
