import 'package:demo_movies_map_profile/features/movies/domain/model/genres_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState({
    @Default(0) num identifier,
    @Default("") String title,
    @Default("") String overview,
    @Default("") String imagePoster,
    @Default("") String imageCard,
    @Default(0) num vote,
    @Default(0.0) num rating,
    @Default([]) List<String> genres,
  }) = _MovieState;

  const MovieState._();
}
