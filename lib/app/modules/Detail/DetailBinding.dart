import 'package:get/get.dart';
import 'package:flutter_pattern_example/app/modules/Detail/DetailController.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
