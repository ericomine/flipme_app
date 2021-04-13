import 'package:flutter/material.dart';

const primaryColor = Color(0xFF3B5CB8);
const auxTextColor = Color(0xFF606377);
const backgroundColor = Color(0xFFE8EBF6);

ThemeData buildFliperTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    primaryColor: primaryColor,
    backgroundColor: backgroundColor,
    textTheme: base.textTheme
        .copyWith(
          headline6: TextStyle(
              fontSize: 16 /*25*/,
              fontWeight: FontWeight.w800,
              color: primaryColor),
          bodyText1: TextStyle(
              fontSize: 13 /* 18 */,
              fontWeight: FontWeight.w800,
              color: primaryColor),
          bodyText2: TextStyle(
              fontSize: 10.5 /* 16 */,
              fontWeight: FontWeight.w500,
              color: auxTextColor),
        )
        .apply(
          fontFamily: "Montserrat",
        ),
  );
}
