import 'package:demo_movies_map_profile/common/const/navigation_paths.dart';
import 'package:demo_movies_map_profile/common/utils/context_extension.dart';
import 'package:demo_movies_map_profile/features/common/di/navigation_provider.dart';
import 'package:demo_movies_map_profile/features/home/framework/di/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const HomePage(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.tab,
        onTap: (index) {
          ref.read(homeProvider.notifier).updateIndex(index);

          late String screen;
          switch(index) {
            case 0 : screen = initialPage; break;
            case 1 : screen = mapPagePath; break;
            default:
              screen = profilePagePath; break;
          }
          ref.read(navigationProvider).go(screen);
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.movie),
              label: context.getString.homePageTabMovies),
          BottomNavigationBarItem(
              icon: const Icon(Icons.map),
              label: context.getString.homePageTabMap),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: context.getString.homePageTabProfile),
        ],
      ),
      body: navigationShell,
    );
  }
}
