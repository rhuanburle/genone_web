import 'package:genone_web_flutter/modules/privacy_policy/privacy_policy_controller.dart';
import 'package:get/get.dart';

class PrivacyPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivacyPolicyController>(() => PrivacyPolicyController());
  }
}