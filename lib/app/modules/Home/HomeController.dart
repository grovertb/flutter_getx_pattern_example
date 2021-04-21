import 'package:flutter_pattern_example/app/data/repositories/local/authentication_repository.dart';
import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(Routes.LOGIN, (_) => false);
  }
}
