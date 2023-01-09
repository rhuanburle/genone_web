import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var timer;
  RxInt clientBannerCount = 1.obs;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  startTimer() {
    timer = Timer(const Duration(seconds: 3), () {
      if (clientBannerCount.value == 4) {
        clientBannerCount.value = 1;
      } else {
        clientBannerCount.value++;
      }
      startTimer();
    });
  }

}
