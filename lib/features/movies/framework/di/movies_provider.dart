import 'package:demo_movies_map_profile/features/movies/data/data_source/movies_remote_data_source.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/catories_dto_to_categories_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/data/mapper/movies_dto_to_movies_state_mapper.dart';
import 'package:demo_movies_map_profile/features/movies/data/movies_repository.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/categories_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/use_cases/get_categories_use_cases.dart';
import 'package:demo_movies_map_profile/features/movies/domain/use_cases/get_movies_use_cases.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/data_source/movies_remote_data_source_impl.dart';
import 'package:demo_movies_map_profile/features/movies/framework/presentation/provider/catgories_provider.dart';
import 'package:demo_movies_map_profile/features/movies/framework/presentation/provider/movies_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesRemoteDataSourceProvider =
    Provider<MoviesRemoteDataSource>((ref) => MoviesRemoteDataSourceImpl());

final categoriesDtoToCategoriesStateMapperProvider =
    Provider((ref) => CategoriesDtoToCategoriesStateMapper());

final moviesDtoToMoviesStateMapperMapperProvider =
    Provider((ref) => MoviesDtoToMoviesStateMapper());

final moviesRepositoryProvider = Provider((ref) => MoviesRepository(
      ref.watch(moviesRemoteDataSourceProvider),
      ref.read(categoriesDtoToCategoriesStateMapperProvider),
      ref.read(moviesDtoToMoviesStateMapperMapperProvider),
    ));

final getCategoriesUseCasesProvider = Provider(
    (ref) => GetCategoriesUseCases(ref.watch(moviesRepositoryProvider)));

final getMoviesUseCasesProvider =
    Provider((ref) => GetMoviesUseCases(ref.watch(moviesRepositoryProvider)));

final categoriesProvider =
    StateNotifierProvider<CategoriesProvider, CategoriesState>((ref) {
  return CategoriesProvider(
    ref.watch(getCategoriesUseCasesProvider),
  );
});

final moviesProvider =
    StateNotifierProvider<MoviesProvider, MoviesState>((ref) {
  return MoviesProvider(
    ref.watch(getMoviesUseCasesProvider),
  );
});
