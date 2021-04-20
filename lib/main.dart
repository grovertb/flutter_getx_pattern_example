import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/modules/Splash/SplashBinding.dart';
import 'package:flutter_pattern_example/app/modules/Splash/splashPage.dart';
import 'package:flutter_pattern_example/app/routes/pages.dart';
import 'package:flutter_pattern_example/app/utils/depedency_injection.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
