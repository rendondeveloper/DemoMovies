import 'package:demo_movies_map_profile/features/movies/data/movies_repository.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';

class GetCategoriesUseCases {
  final MoviesRepository _repository;

  GetCategoriesUseCases(this._repository);

  Future<CategoriesState> invoke() => _repository.getCategories();
}
