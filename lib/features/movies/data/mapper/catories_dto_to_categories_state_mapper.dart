import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/genres_state.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/categories_dto.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class CategoriesDtoToCategoriesStateMapper
    implements Mapper<CategoriesDto, CategoriesState> {
  @override
  CategoriesState map(CategoriesDto input) {
    final list = input.genres?.map((item) {
      return GenresState(identifier: item.id ?? 0, name: item.name ?? "");
    }).toList();

    return CategoriesState(genres: list ?? []);
  }
}
