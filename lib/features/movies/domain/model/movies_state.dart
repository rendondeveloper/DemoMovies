import 'package:demo_movies_map_profile/features/movies/domain/model/genres_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movie_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    @Default(false) bool isLoading,
    @Default([]) List<MovieState> movies,
  }) = _MoviesState;

  const MoviesState._();
}