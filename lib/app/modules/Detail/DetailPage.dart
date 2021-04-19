import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_pattern_example/app/modules/Detail/DetailController.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => Scaffold(
        body: Center(),
      ),
    );
  }
}
