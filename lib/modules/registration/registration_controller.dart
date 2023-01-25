import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:get/get.dart';
import '../../data/providers/services/auth_service.dart';

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

  AuthService authService = Get.put(AuthService());

  void register(context) {
    if (passwordController.text == confirmPasswordController.text) {
      if (emailController.text.isNotEmpty ||
          passwordController.text.isNotEmpty) {
        sendNewUser(context);
      } else {
        Get.snackbar(
          'Erro',
          'Preencha todos os campos',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } else {
      Get.snackbar(
        'Erro',
        'As senhas não coincidem',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void sendNewUser(context) async {
    authService.signUp(email: emailController.text, password: passwordController.text).then((value) => {
      if (value == "Signed up") {
        Get.toNamed(AppRoutes.loginPage)
      } else {
        Get.snackbar("Erro", 'Email ou senha incorretos',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white)
      }
    });
  }
}