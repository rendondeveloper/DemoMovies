import 'package:demo_movies_map_profile/common/db/features/categories_data_base/dto/categories_base_dto.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/genres_state.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class CategoriesBaseDtoToCategoriesStateMapper
    implements Mapper<List<CategoriesBaseDto>, CategoriesState> {
  @override
  CategoriesState map(List<CategoriesBaseDto> input) {
    final list = input.map((item) {
      return GenresState(
          identifier: item.identifier ?? 0, name: item.name ?? "");
    }).toList();

    return CategoriesState(genres: list ?? []);
  }
}
