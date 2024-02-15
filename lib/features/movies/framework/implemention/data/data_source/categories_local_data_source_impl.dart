import 'package:demo_movies_map_profile/common/db/features/categories_data_base/data_base/categories_base_daba_base_impl.dart';
import 'package:demo_movies_map_profile/common/db/features/categories_data_base/dto/categories_base_dto.dart';
import 'package:demo_movies_map_profile/features/movies/data/data_source/categories_local_data_source.dart';

class CategoriesLocalDataSourceImpl implements CategoriesLocalDataSource {
  final CategoriesBaseDataBaseImpl _categoriesBaseDataBaseImpl;

  CategoriesLocalDataSourceImpl(this._categoriesBaseDataBaseImpl);

  @override
  Future<List<CategoriesBaseDto>> getCategories() async {
    return await _categoriesBaseDataBaseImpl.getAllCategories();
  }

  @override
  Future<bool> insertCategories(List<CategoriesBaseDto> categories) async {
   return await _categoriesBaseDataBaseImpl.insertCategories(categories);
  }
}
