import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/modules/login/login_repository.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:get/get.dart';
import '../../utils/global_variables.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final globalVariables = Get.put(GlobalVariables());
  final repository = Get.find<LoginRepository>();
  bool isFistLogin = Get.arguments ?? false;

  Future getLogin() async {
    try{
      final response = await repository.signIn(email: emailController.text, password: passwordController.text);
      if (response == "Signed in") {
        globalVariables.isLogin.value = true;
        Get.toNamed(AppRoutes.homePage);
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