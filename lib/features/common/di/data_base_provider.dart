import 'package:demo_movies_map_profile/common/db/data_base/data_base.dart';import 'package:demo_movies_map_profile/common/db/features/categories_data_base/data_base/categories_base_daba_base_impl.dart';import 'package:flutter_riverpod/flutter_riverpod.dart';final dataBaseProvider = Provider((provider) => DataBaseLocal());final categoriesBaseDataBaseImplProvider = Provider((provider) => CategoriesBaseDataBaseImpl(provider.read(dataBaseProvider)));