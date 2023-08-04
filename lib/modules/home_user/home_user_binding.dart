import 'package:genone_web_flutter/modules/home_user/home_user_controller.dart';
import 'package:get/get.dart';

class HomeUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeUserController());
  }
}