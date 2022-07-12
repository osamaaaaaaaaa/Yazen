import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:playing_with_flutter/controller/AuthController.dart';
import 'package:playing_with_flutter/controller/HomeController.dart';

class binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => HomeController());
  }
}
