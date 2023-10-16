import 'package:genone_web_flutter/modules/oligonucleotideos_info/oligonucleotideos_Info_controller.dart';
import 'package:get/get.dart';

class OligonucleotideosInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OligonucleotideosInfoController>(() => OligonucleotideosInfoController());
  }
}