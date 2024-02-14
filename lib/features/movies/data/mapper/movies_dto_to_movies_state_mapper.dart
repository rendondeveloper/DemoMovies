import 'package:demo_movies_map_profile/common/const/configuration_app.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movie_state.dart';
import 'package:demo_movies_map_profile/features/movies/domain/model/movies_state.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/movies_dto.dart';
import 'package:util_commons/utils/helpers/mapper.dart';

class MoviesDtoToMoviesStateMapper
    implements Mapper<MoviesDto, MoviesState> {
  @override
  MoviesState map(MoviesDto input) {
    final list = input.results?.map((item) {
      return MovieState(
        identifier: item.id ?? 0,
        title: item.title ?? "",
        overview: item.overview ?? "",
        imagePoster:
            item.posterPath != null ? "$baseImage${item.posterPath}" : "",
        imageCard:
            item.backdropPath != null ? "$baseImage${item.backdropPath}" : "",
        vote: item.voteAverage ?? 0.0,
        rating: item.voteCount ?? 0.0,
      );
    }).toList();

    return MoviesState(movies: list ?? []);
  }
}
