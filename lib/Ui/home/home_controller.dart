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

  void sendEmail() {
    if (messageController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        subjectController.text.isNotEmpty) {
      var dio = Dio();
      dio.post(
        'http://localhost:8080/email/send',
        data: {
          'message': messageController.text,
          'name': nameController.text,
          'email': emailController.text,
          'phone': phoneController.text,
          'subject': subjectController.text,
          'sendDate': DateTime.now().toString(),
        },
      );
      Get.snackbar(
        'Sucesso',
        'Email enviado com sucesso',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        'Erro',
        'Preencha todos os campos',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}

