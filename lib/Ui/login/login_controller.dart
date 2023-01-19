import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:genone_web_flutter/services/auth_service.dart';
import 'package:get/get.dart';
import '../../utils/global_variables.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalVariables globalVariables = Get.put(GlobalVariables());
  AuthService authService = Get.put(AuthService());

  Future login() async {
    authService.signIn(
        email: emailController.text, password: passwordController.text).then((
        value) {
      if (value == "Signed in") {
        globalVariables.isLogin.value = true;
        Get.toNamed(AppRoutes.homePage);
      } else {
        Get.snackbar("Erro", 'Email ou senha incorretos',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    });
  }
}