import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/data/providers/authentication_api.dart';
import 'package:get/get.dart';

class AuthenticationRepository {
  final AuthenticationAPI _api = Get.find<AuthenticationAPI>();

  // AuthenticationRepository(this._api);

  Future<RequestToken> newRequestToken() => _api.newRequestToken();
}
