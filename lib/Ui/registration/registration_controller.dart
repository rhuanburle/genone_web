import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  RxInt registerCountPage = 1.obs;

  void register() {
    if (registerCountPage.value == 1) {
      if (nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty) {
        registerCountPage.value++;
      } else {
        Get.snackbar(
          'Erro',
          'Preencha todos os campos',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } else if (registerCountPage.value != 1) {
      if (
          // zipCodeController.text.isNotEmpty &&
          // streetAddressController.text.isNotEmpty &&
          // cityController.text.isNotEmpty &&
          // stateController.text.isNotEmpty &&
          phoneController.text.isNotEmpty
      ) {
        sendNewUser();
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
    registerCountPage.value++;
  }

  void sendNewUser() {
    var dio = Dio();
    dio.post(
      'http://localhost:8080/user/',
      data: {
        'name': nameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'phone': phoneController.text,
        'zipCode': zipCodeController.text.isEmpty ? '' : zipCodeController.text,
        'streetAddress': streetAddressController.text.isEmpty ? '' : streetAddressController.text,
        'city': cityController.text.isEmpty ? '' : cityController.text,
        'state': stateController.text.isEmpty ? '' : stateController.text,
        'dateCreated': DateTime.now().toString(),
        'dateUpdated': DateTime.now().toString(),
      },
    );
    Get.snackbar(
      'Sucesso',
      'Usuário cadastrado com sucesso',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
  }


}