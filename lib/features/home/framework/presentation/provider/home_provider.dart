import 'package:demo_movies_map_profile/features/home/framework/presentation/model/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider() : super(const HomeState());

  updateIndex(int index) {
    state = state.copyWith(tab: index);
  }
}
