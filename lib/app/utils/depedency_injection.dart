import 'package:dio/dio.dart';
import 'package:flutter_pattern_example/app/data/providers/authentication_api.dart';
import 'package:flutter_pattern_example/app/data/repositories/authentication_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut(
      () => Dio(
        BaseOptions(baseUrl: "https://api.themoviedb.org/3"),
      ),
    );
    Get.lazyPut(
      () => AuthenticationAPI(),
    );
    Get.lazyPut(
      () => AuthenticationRepository(),
    );
  }
}
