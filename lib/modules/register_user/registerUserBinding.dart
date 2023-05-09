import 'package:genone_web_flutter/modules/register_user/register_user_controller.dart';
import 'package:genone_web_flutter/modules/register_user/register_user_repository.dart';
import 'package:get/get.dart';

class RegisterUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterUserController());
    Get.lazyPut(() => RegisterUserRepository());
  }
}