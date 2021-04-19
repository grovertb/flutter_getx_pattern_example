import 'package:flutter_pattern_example/app/modules/Detail/DetailBinding.dart';
import 'package:flutter_pattern_example/app/modules/Detail/DetailPage.dart';
import 'package:get/get.dart';
import 'package:flutter_pattern_example/app/routes/routes.dart';
import 'package:flutter_pattern_example/app/modules/Splash/splashPage.dart';
import 'package:flutter_pattern_example/app/modules/Splash/SplashBinding.dart';
import 'package:flutter_pattern_example/app/modules/Home/HomeBinding.dart';
import 'package:flutter_pattern_example/app/modules/Home/HomePage.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}
