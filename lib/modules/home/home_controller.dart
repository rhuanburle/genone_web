import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class HomeController extends GetxController {
  var timer;
  RxInt clientBannerCount = 1.obs;

  TextEditingController messageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  @override
  void initializer() {
    if (clientBannerCount.value == 1) {
      startTimer();
    }
  }

  startTimer() {
    timer = Timer(const Duration(seconds: 5), () {
      if (clientBannerCount.value == 4) {
        clientBannerCount.value = 1;
      } else {
        clientBannerCount.value++;
      }
      startTimer();
    });
  }

  sendEmail() {
    Dio dio = new Dio();
    var data = {
      "name": nameController.text,
      "email": emailController.text,
      "phone": phoneController.text,
      "subject": subjectController.text,
      "message": messageController.text
    };
    dio.post("https://genone-c0ddb-default-rtdb.firebaseio.com/contact.json", data: data).then((value) => {
      if (value.statusCode == 200) {
        Get.snackbar(
          'Sucesso',
          'Email enviado com sucesso',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        )
      } else {
        Get.snackbar(
          'Erro',
          'Erro ao enviar email',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        )
      }
    });
  }
}

