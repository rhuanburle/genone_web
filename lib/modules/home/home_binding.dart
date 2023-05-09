import 'package:genone_web_flutter/modules/login/login_repository.dart';
import 'package:genone_web_flutter/modules/registration/registration_repository.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}