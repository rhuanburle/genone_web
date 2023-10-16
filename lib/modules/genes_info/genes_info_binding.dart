import 'package:genone_web_flutter/modules/genes_info/genes_info_controller.dart';
import 'package:get/get.dart';

class GenesInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenesInfoController>(() => GenesInfoController());
  }
}