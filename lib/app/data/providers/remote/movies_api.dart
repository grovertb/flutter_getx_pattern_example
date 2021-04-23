import 'package:dio/dio.dart';
import 'package:flutter_pattern_example/app/data/models/movie.dart';
import 'package:flutter_pattern_example/app/utils/constants.dart';
import 'package:get/get.dart' hide Response;

class MoviesAPI {
  final Dio _dio = Get.find<Dio>();

  Future<List<Movie>> getTopMovies() async {
    final Response response = await _dio.get(
      "/movie/top_rated",
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API_KEY,
        "language": "es",
      },
    );

    return (response.data['results'] as List)
        .map((e) => Movie.fromJson(e))
        .toList();
  }
}
