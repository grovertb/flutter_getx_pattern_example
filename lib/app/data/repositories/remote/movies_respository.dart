import 'package:flutter_pattern_example/app/data/models/movie.dart';
import 'package:flutter_pattern_example/app/data/providers/remote/movies_api.dart';
import 'package:get/get.dart';

class MoviesRepository {
  MoviesAPI _moviesAPI = Get.find<MoviesAPI>();

  Future<List<Movie>> getTopMovies() => _moviesAPI.getTopMovies();
}
