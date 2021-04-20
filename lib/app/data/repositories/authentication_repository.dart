import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/data/providers/authentication_api.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationRepository {
  final AuthenticationAPI _api = Get.find<AuthenticationAPI>();

  // AuthenticationRepository(this._api);

  Future<RequestToken> newRequestToken() => _api.newRequestToken();
  Future<RequestToken> authWithLogin({
    @required String userName,
    @required String password,
    @required String requestToken,
  }) =>
      _api.validateWithLogin(
        username: userName,
        password: password,
        requestToken: requestToken,
      );
}
