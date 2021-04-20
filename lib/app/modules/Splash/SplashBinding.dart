import 'package:flutter_pattern_example/app/modules/Splash/SplashController.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // final dio = Dio(
    //   BaseOptions(baseUrl: "https://api.themoviedb.org/3"),
    // );
    // final api = AuthenticationAPI(dio);
    // final repository = AuthenticationRepository(api);

    Get.lazyPut(() => SplashController());
  }
}
