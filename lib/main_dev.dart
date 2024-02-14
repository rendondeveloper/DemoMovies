import 'package:demo_movies_map_profile/common/const/theme_dark_app.dart';
import 'package:demo_movies_map_profile/features/common/di/navigation_provider.dart';
import 'package:demo_movies_map_profile/features/common/di/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'common/const/theme_normal_app.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(navigationProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);


    return MaterialApp.router(
        supportedLocales: const [
          Locale('es'),
          Locale('en'),
        ],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        title: "Demo Movies Map Profile",
        debugShowCheckedModeBanner: false,
        darkTheme: themeDark,
        theme: themeNormal,
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        routerConfig: navigation);
  }
}
