import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:meta/meta.dart' show required;
import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/utils/constants.dart';

class AuthenticationAPI {
  final Dio _dio = Get.find<Dio>();

  // AuthenticationAPI(this._dio);

  Future<RequestToken> newRequestToken() async {
    final Response response = await _dio.get(
      '/authentication/token/new',
      queryParameters: {"api_key": Constants.THE_MOVIE_DB_API_KEY},
    );

    return RequestToken.fromJson(response.data);
  }

  Future<RequestToken> validateWithLogin({
    @required String username,
    @required String password,
    @required String requestToken,
  }) async {
    final Response response = await _dio.post(
      '/authentication/token/validate_with_login',
      queryParameters: {
        "api_key": Constants.THE_MOVIE_DB_API_KEY,
      },
      data: {
        "username": username,
        "password": password,
        "request_token": requestToken,
      },
    );

    return RequestToken.fromJson(response.data);
  }
}
