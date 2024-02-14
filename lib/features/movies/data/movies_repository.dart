import 'package:demo_movies_map_profile/features/movies/data/data_source/movies_remote_data_source.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/catories_dto_to_categories_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/movies_dto_to_movies_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';

class MoviesRepository {
  final MoviesRemoteDataSource _moviesRemoteDataSource;
  final CategoriesDtoToCategoriesStateMapper _mapperCategories;
  final MoviesDtoToMoviesStateMapper _mapperMovies;

  MoviesRepository(
      this._moviesRemoteDataSource, this._mapperCategories, this._mapperMovies);

  Future<CategoriesState> getCategories() async {
    final result = await _moviesRemoteDataSource.getCategories();
    return _mapperCategories.map(result);
  }

  Future<MoviesState> getMovies(num pagination, {String? genre}) async {
    final result =
        await _moviesRemoteDataSource.getMovies(pagination, genre: genre);
    return _mapperMovies.map(result);
  }
}
