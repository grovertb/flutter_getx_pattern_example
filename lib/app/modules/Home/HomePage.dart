import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/modules/Home/HomeController.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        body: Center(
          child: Text("HomePage"),
        ),
      ),
    );
  }
}
