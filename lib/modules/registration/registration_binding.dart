import 'package:genone_web_flutter/modules/registration/registration_repository.dart';
import 'package:get/get.dart';
import 'registration_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
    Get.lazyPut(() => RegistrationRepository());
  }
}