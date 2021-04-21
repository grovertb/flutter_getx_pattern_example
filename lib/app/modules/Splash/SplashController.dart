import 'package:flutter_pattern_example/app/data/models/request_token.dart';
import 'package:flutter_pattern_example/app/data/repositories/local/authentication_repository.dart';
import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // SplashController(this._repository);
  final LocalAuthRepository _localRespository = Get.find<LocalAuthRepository>();

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  _init() async {
    try {
      // await Future.delayed(Duration(seconds: 2));

      final RequestToken requestToken = await _localRespository.session;

      print("GRROVER");
      print(requestToken);
      Get.offNamed(requestToken != null ? Routes.HOME : Routes.LOGIN
          // arguments: requestToken.requestToken,
          );
    } catch (e) {
      print(e);
    }
  }
}
