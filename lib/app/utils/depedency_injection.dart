import 'package:dio/dio.dart';
import 'package:flutter_pattern_example/app/data/providers/local/local_auth.dart';
import 'package:flutter_pattern_example/app/data/providers/remote/authentication_api.dart';
import 'package:flutter_pattern_example/app/data/providers/remote/movies_api.dart';
import 'package:flutter_pattern_example/app/data/repositories/local/authentication_repository.dart';
import 'package:flutter_pattern_example/app/data/repositories/remote/authentication_repository.dart';
import 'package:flutter_pattern_example/app/data/repositories/remote/movies_respository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.put<FlutterSecureStorage>(FlutterSecureStorage());
    Get.put<Dio>(Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3")));

    // providers
    Get.put<AuthenticationAPI>(AuthenticationAPI());
    Get.put<LocalAuth>(LocalAuth());
    Get.put<MoviesAPI>(MoviesAPI());

    // repositories
    Get.put<AuthenticationRepository>(AuthenticationRepository());
    Get.put<LocalAuthRepository>(LocalAuthRepository());
    Get.put<MoviesRepository>(MoviesRepository());
  }
}
