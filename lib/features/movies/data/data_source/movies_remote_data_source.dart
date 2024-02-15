import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/categories_dto.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/movies_dto.dart';

abstract class MoviesRemoteDataSource {
  Future<CategoriesDto> getRemoteCategories();
  Future<MoviesDto> getMovies(num pagination, {String? genre});
}