import 'package:demo_movies_map_profile/features/movies/domain/model/genres_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    @Default(false) bool isLoading,
    @Default(0) num selectedIndex,
    @Default([]) List<GenresState> genres,
  }) = _CategoriesState;

  const CategoriesState._();
}