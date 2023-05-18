import 'package:genone_web_flutter/modules/home_user/home_user_controller.dart';
import 'package:genone_web_flutter/modules/home_user/home_user_repository.dart';
import 'package:genone_web_flutter/modules/register_user/register_user_controller.dart';
import 'package:genone_web_flutter/modules/register_user/register_user_repository.dart';
import 'package:get/get.dart';

class HomeUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeUserController());
    Get.lazyPut(() => HomeUserRepository());
  }
}