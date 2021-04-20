import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // SplashController(this._repository);

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      // RequestToken requestToken = await _repository.newRequestToken();
      await Future.delayed(Duration(seconds: 2));

      Get.offNamed(
        Routes.HOME,
        // arguments: requestToken.requestToken,
      );
    } catch (e) {
      print(e);
    }
  }
}
