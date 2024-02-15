import 'package:demo_movies_map_profile/features/movies/data/data_source/categories_local_data_source.dart';
import 'package:demo_movies_map_profile/features/movies/data/data_source/movies_remote_data_source.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/categories_dto_to_catories_base_dto_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/catories_base_dto_to_categories_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/catories_dto_to_categories_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/movies_dto_to_movies_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';

class MoviesRepository {
  final MoviesRemoteDataSource _moviesRemoteDataSource;
  final CategoriesDtoToCategoriesStateMapper _mapperCategories;
  final MoviesDtoToMoviesStateMapper _mapperMovies;
  final CategoriesLocalDataSource _categoriesLocalDataSource;
  final CategoriesBaseDtoToCategoriesStateMapper
      _categoriesBaseDtoToCategoriesStateMapper;
  final CategoriesDtoToCategoriesBaseDtoMapper
      _categoriesDtoToCategoriesBaseDtoMapper;

  MoviesRepository(
      this._moviesRemoteDataSource,
      this._mapperCategories,
      this._mapperMovies,
      this._categoriesLocalDataSource,
      this._categoriesBaseDtoToCategoriesStateMapper,
      this._categoriesDtoToCategoriesBaseDtoMapper);

  Future<CategoriesState> getCategories() async {
    final resultLocal = await _categoriesLocalDataSource.getCategories();
    if(resultLocal.isNotEmpty) {
      return _categoriesBaseDtoToCategoriesStateMapper.map(resultLocal);
    } else {
      final resultRemote = await _moviesRemoteDataSource.getRemoteCategories();

      final listLocal = _categoriesDtoToCategoriesBaseDtoMapper.map(
          resultRemote);
      await _categoriesLocalDataSource.insertCategories(listLocal);

      return _mapperCategories.map(resultRemote);
    }
  }

  Future<MoviesState> getMovies(num pagination, {String? genre}) async {
    final result =
        await _moviesRemoteDataSource.getMovies(pagination, genre: genre);
    return _mapperMovies.map(result);
  }
}
