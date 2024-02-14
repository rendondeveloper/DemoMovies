import 'package:demo_movies_map_profile/features/movies/data/movies_repository.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';

class GetMoviesUseCases {
  final MoviesRepository _repository;

  GetMoviesUseCases(this._repository);

  Future<MoviesState> invoke(num pagination, {String? genre}) =>
      _repository.getMovies(pagination, genre: genre);
}
