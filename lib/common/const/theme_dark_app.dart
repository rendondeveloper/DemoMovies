import 'package:flutter/material.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';

import 'configuration_app.dart';

final themeDark = ThemeData(
    scaffoldBackgroundColor: onBackground,
    appBarTheme: const AppBarTheme(
        backgroundColor: onPrimaryDarkColor,
        titleTextStyle: TextStyle(
            color: onText,
            fontWeight: FontWeight.normal)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: onIcons,
        backgroundColor: onAccentColor,
        splashColor: icons),
    iconTheme: const IconThemeData(color: icons),
    cardTheme: CardTheme(
        surfaceTintColor: onCardColor,
        color: onCardColor,
        elevation: elevationMedium,
        shadowColor: onShadow,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMedium),
        ),
        margin: const EdgeInsets.only(
            left: simpleSeparation,
            right: simpleSeparation,
            top: simpleSeparation),
    ),
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: onPrimaryDarkColor,
      onPrimary: onPrimaryDarkColor,
      secondary: onSecondaryText,
      onSecondary: onSecondaryText,
      error: onErrorColor,
      onError: onErrorColor,
      background: onBackground,
      onBackground: onBackground,
      surface: onBackground,
      onSurface: onDividerColor,
      ),
);