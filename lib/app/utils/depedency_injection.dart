import 'package:dio/dio.dart';
import 'package:flutter_pattern_example/app/data/providers/local/local_auth.dart';
import 'package:flutter_pattern_example/app/data/providers/remote/authentication_api.dart';
import 'package:flutter_pattern_example/app/data/repositories/local/authentication_repository.dart';
import 'package:flutter_pattern_example/app/data/repositories/remote/authentication_repository.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut<FlutterSecureStorage>(
      () => FlutterSecureStorage(),
    );
    Get.lazyPut<Dio>(
      () => Dio(
        BaseOptions(baseUrl: "https://api.themoviedb.org/3"),
      ),
    );
    // providers
    Get.lazyPut<AuthenticationAPI>(
      () => AuthenticationAPI(),
    );
    Get.lazyPut<LocalAuth>(
      () => LocalAuth(),
    );
    // repositories
    Get.lazyPut<AuthenticationRepository>(
      () => AuthenticationRepository(),
    );
    Get.lazyPut<LocalAuthRepository>(
      () => LocalAuthRepository(),
    );
  }
}
