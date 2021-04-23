import 'package:flutter_pattern_example/app/data/models/movie.dart';
import 'package:flutter_pattern_example/app/data/repositories/local/authentication_repository.dart';
import 'package:flutter_pattern_example/app/data/repositories/remote/movies_respository.dart';
import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  final MoviesRepository _moviesRepository = Get.find<MoviesRepository>();

  List<Movie> _movies = [];

  List<Movie> get movies => _movies;

  @override
  void onReady() {
    super.onReady();

    load();
  }

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(Routes.LOGIN, (_) => false);
  }

  Future<void> load() async {
    try {
      print("Load");
      _movies = await _moviesRepository.getTopMovies();
      print("movies ::::::: ${_movies.length}");
      // update(['movies']);
      update();
    } catch (e) {
      print(e);
    }
  }
}
