import 'dart:io';
import 'dart:convert';
import 'package:demo_movies_map_profile/common/const/configuration_app.dart';
import 'package:demo_movies_map_profile/features/movies/data/data_source/movies_remote_data_source.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/path.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/categories_dto.dart';
import 'package:demo_movies_map_profile/features/movies/framework/implemention/data/config/response/movies_dto.dart';
import 'package:http/http.dart' as http;

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  @override
  Future<CategoriesDto> getRemoteCategories() async {
    var url = Uri.https(baseUrl, categoriesPath);
    var response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader: "Bearer $tokenApi",
      },
    );

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    print("responseJson getCategories -> $responseJson");

    final responseResult = CategoriesDto.fromJson(responseJson);

    return responseResult;
  }

  @override
  Future<MoviesDto> getMovies(num pagination, {String? genre}) async {
    final params = genre == null
        ? {
            "include_adult": "false",
            "include_video": "false",
            "language": "en-US",
            "page": pagination.toString(),
            "sort_by": "popularity.desc",
          }
        : {
            "include_adult": "false",
            "include_video": "false",
            "language": "en-US",
            "page": pagination.toString(),
            "sort_by": "popularity.desc",
            "genre": genre.toString(),
          };

    var url = Uri.https(baseUrl, moviesPath, params);
    var response = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader: configurationToken,
      },
    );

    final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

    print("responseJson getMovies -> $responseJson");

    final responseResult = MoviesDto.fromJson(responseJson);

    return responseResult;
  }
}
