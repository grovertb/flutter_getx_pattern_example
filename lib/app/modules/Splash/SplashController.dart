import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/data/repositories/authentication_repository.dart';
import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final AuthenticationRepository _repository =
      Get.find<AuthenticationRepository>();

  // SplashController(this._repository);

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      RequestToken requestToken = await _repository.newRequestToken();
      print("==== requestToken ====");
      print(requestToken.requestToken);
      print(requestToken.expiresAt);
      print(requestToken.success);

      Get.offNamed(Routes.HOME);
    } catch (e) {
      print(e);
    }
  }
}
