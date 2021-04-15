import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  ThemeData get themeData => Theme.of(this);
  TextTheme get textTheme => themeData.textTheme;
  Size get size => MediaQuery.of(this).size;

  void showSnackBar(String message) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(
        content: Text(message,
            style: textTheme.bodyText2!.copyWith(color: Colors.white)),
        backgroundColor: themeData.primaryColor,
      ));
    });
  }
}
