import 'package:genone_web_flutter/modules/plasmideos_available/plasmideos_available_controller.dart';
import 'package:get/get.dart';

class PlasmideosAvailableBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlasmideosAvailableController>(
      () => PlasmideosAvailableController(),
    );
  }
}