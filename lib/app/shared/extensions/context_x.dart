import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  ThemeData get themeData => Theme.of(this);
  TextTheme get textTheme => themeData.textTheme;
}
