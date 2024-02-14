import 'package:flutter/material.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';

import 'configuration_app.dart';

final themeNormal = ThemeData(
  scaffoldBackgroundColor: background,
  appBarTheme: const AppBarTheme(
      backgroundColor: primaryDarkColor,
      titleTextStyle: TextStyle(
          color: text,
          fontWeight: FontWeight.normal)),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: icons,
      backgroundColor: accentColor,
      splashColor: icons),
  iconTheme: const IconThemeData(color: icons),
  cardTheme: CardTheme(
    surfaceTintColor: cardColor,
    color: cardColor,
    elevation: elevationMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusMedium),
    ),
    margin: const EdgeInsets.only(
        left: simpleSeparation,
        right: simpleSeparation,
        top: simpleSeparation),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: primaryDarkColor,
    secondary: secondaryText,
    onSecondary: secondaryText,
    error: errorColor,
    onError: errorColor,
    background: background,
    onBackground: background,
    surface: background,
    onSurface: dividerColor,
  ),
);
