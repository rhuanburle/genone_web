import 'package:genone_web_flutter/modules/login/login_repository.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut(() => LoginRepository());
  }
}