import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/modules/registration/registration_repository.dart';
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
  final repository = Get.find<RegistrationRepository>();

  void register() {
    if (passwordController.text == confirmPasswordController.text) {
      if (emailController.text.isNotEmpty ||
          passwordController.text.isNotEmpty) {
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

  sendNewUser() async {
    try{
      final response = await repository.signUp(email: emailController.text, password: passwordController.text);
      if (response == "Signed up") {
        Get.offAllNamed(AppRoutes.loginPage, arguments: true);
      } else {
        Get.snackbar("Erro", 'Email ou senha incorretos',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.blue,
            colorText: Colors.white);
      }
    } catch (e) {
      print(e);
    }
  }
}