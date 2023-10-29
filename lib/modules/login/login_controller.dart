import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/repository/repository_api.dart';
import 'package:genone_web_flutter/global_widgets/dialog_general.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../utils/global_variables.dart';

class LoginController extends GetxController with AppUtil {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final globalVariables = Get.put(GlobalVariables());
  final repositoryApi = Get.find<RepositoryApi>();
  bool isFistLogin = false;
  final storage = GetStorage();
  RxBool isLoading = false.obs;

  Future getLogin(context) async {
    try{
      // isLoading.value = true;
      // final response = await repositoryApi.signIn(email: emailController.text, password: passwordController.text);
      //
      // checkLoginStatus(response, isFistLogin, context);
      Get.toNamed(AppRoutes.homeUserPage);
    } catch (e) {
      loggerError(message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  void checkLoginStatus(response, bool isFistLogin, context) async {
    try{
      if (response == "Signed in" && !isFistLogin) {
        globalVariables.isLogin.value = false;
        loggerInfo(message: 'Login Success');
        Get.toNamed(AppRoutes.homeUserPage);
      } else if (response == "Signed in" && isFistLogin) {
        globalVariables.isLogin.value = true;
        loggerInfo(message: 'First Login');
        isLoading.value = false;
        Get.toNamed(AppRoutes.registerUserPage);
      } else {
        await showDialog(context: context, builder: (context) => const DialogGeneral(
            title: 'Atenção',
            message: 'Email ou senha incorretos'));
      }
    } catch (e) {
      loggerError(message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}