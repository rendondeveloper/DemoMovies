import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/use_cases/get_movies_use_cases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoviesProvider extends StateNotifier<MoviesState> {
  final GetMoviesUseCases _getMoviesUseCases;

  MoviesProvider(this._getMoviesUseCases)
      : super(const MoviesState()) {
    _init();
  }

  _init() async {
    try {
      final response = await _getMoviesUseCases.invoke(1);
      state = state.copyWith(movies: response.movies);
    } catch(ex) {
      state = state.copyWith(movies: []);
    }
  }
}
