import 'package:genone_web_flutter/modules/publications/publications_controller.dart';
import 'package:get/get.dart';

class PublicationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublicationsController>(
      () => PublicationsController(),
    );
  }
}