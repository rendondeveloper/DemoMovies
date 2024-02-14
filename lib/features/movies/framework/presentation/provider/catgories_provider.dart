import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/use_cases/get_categories_use_cases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesProvider extends StateNotifier<CategoriesState> {
  final GetCategoriesUseCases _getCategoriesUseCases;

  CategoriesProvider(this._getCategoriesUseCases)
      : super(const CategoriesState()) {
    _init();
  }

  _init() async {
    try {
      final response = await _getCategoriesUseCases.invoke();
      state = state.copyWith(genres: response.genres);
    } catch(ex) {
      state = state.copyWith(genres: []);
    }
  }

  void updateCategory(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}
