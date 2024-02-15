import 'package:demo_movies_map_profile/common/db/features/categories_data_base/dto/categories_base_dto.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/categories_dto.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class CategoriesDtoToCategoriesBaseDtoMapper
    implements Mapper<CategoriesDto, List<CategoriesBaseDto>> {
  @override
  List<CategoriesBaseDto> map(CategoriesDto input) {
    final list = input.genres?.map((item) {
          return CategoriesBaseDto(
              identifier: item.id ?? 0, name: item.name ?? "");
        }).toList() ??
        [];

    return list;
  }
}
