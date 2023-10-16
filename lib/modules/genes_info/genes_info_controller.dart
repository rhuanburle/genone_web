import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';

class GenesInfoController extends GetxController with AppUtil {
  RxBool isActiviButtonOne = false.obs;

  swapGenesScreen(int index) {
    if (index == 1) {
      isActiviButtonOne.value = true;
    } else {
      isActiviButtonOne.value = false;
    }
  }
}