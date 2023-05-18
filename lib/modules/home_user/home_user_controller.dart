import 'package:genone_web_flutter/modules/home_user/home_user_repository.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';

class HomeUserController extends GetxController with AppUtil {
  final repository = Get.find<HomeUserRepository>();

  RxBool isInitLoading = false.obs;

}
