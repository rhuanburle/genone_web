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
        Get.rawSnackbar(
          title: 'Atenção',
          message: 'Email ou senha incorretos',
          icon: const Icon(
            Icons.warning_amber_rounded,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          borderRadius: 10.0,
          margin: EdgeInsets.all(20.0),
          snackPosition: SnackPosition.BOTTOM,);
      }
    } catch (e) {
      print(e);
    }
  }
}