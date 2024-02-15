import '../../../../common/db/features/categories_data_base/dto/categories_base_dto.dart';

abstract class CategoriesLocalDataSource {
  Future<List<CategoriesBaseDto>> getCategories();
  Future<bool> insertCategories(List<CategoriesBaseDto> categories);
}