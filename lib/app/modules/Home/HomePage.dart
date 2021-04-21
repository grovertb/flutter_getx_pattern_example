import 'package:flutter/material.dart';
import 'package:flutter_pattern_example/app/modules/Home/HomeController.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: _.logOut,
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
