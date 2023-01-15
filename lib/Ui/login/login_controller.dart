import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/model/user.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../../model/user.dart';
import '../../utils/global_variables.dart';


class LoginController extends GetxController {
 TextEditingController emailController = TextEditingController();
 TextEditingController passwordController = TextEditingController();
 GlobalVariables globalVariables = Get.put(GlobalVariables());

  Future login() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var dio = Dio();
      try {
       final response = await dio.get('http://localhost:8080/user/login/${emailController.text}/${passwordController.text}');
       if (response.statusCode == 200) {
        Get.snackbar(
         'Sucesso',
         'Login realizado com sucesso',
         snackPosition: SnackPosition.BOTTOM,
         backgroundColor: Colors.green,
         colorText: Colors.white,
        );
        globalVariables.isLogin.value = true;
        globalVariables.user = User.fromJson(response.data);
        Get.toNamed(AppRoutes.homePage);
       } else {
        Get.snackbar(
         'Erro',
         'Email ou senha incorretos',
         snackPosition: SnackPosition.BOTTOM,
         backgroundColor: Colors.red,
         colorText: Colors.white,
        );
       }
      } on DioError catch (e) {
        print(e);
        Get.snackbar(
         'Erro',
         'Email ou senha incorretos',
         snackPosition: SnackPosition.BOTTOM,
         backgroundColor: Colors.red,
         colorText: Colors.white,
        );
      }
    }
  }

}