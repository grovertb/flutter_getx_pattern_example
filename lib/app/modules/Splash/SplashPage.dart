import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/modules/Splash/SplashController.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
