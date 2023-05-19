import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/dialog_general.dart';
import 'package:genone_web_flutter/modules/registration/registration_repository.dart';
import 'package:genone_web_flutter/routes/app_routes.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import '../../data/providers/services/auth_service.dart';

class RegistrationController extends GetxController with AppUtil {
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
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          isEmailValid(emailController.text) &&
          verificaSenha(passwordController.text)) {
        sendNewUser();
      } else if (!isEmailValid(emailController.text) &&
          emailController.text.isNotEmpty) {
        showDialogGeneral(
            title: 'Atenção', message: 'Email inválido', context: Get.context!);
      } else if (!verificaSenha(passwordController.text) &&
          passwordController.text.isNotEmpty) {
        showDialogGeneral(
            title: 'Atenção',
            message:
                'A senha deve conter no mínimo 8 caracteres, uma letra, um simbolo e um número',
            context: Get.context!);
      } else {
        showDialogGeneral(
            title: 'Atenção',
            message: 'Preencha todos os campos',
            context: Get.context!);
      }
    } else {
      showDialogGeneral(
          title: 'Atenção',
          message: 'As senhas não coincidem',
          context: Get.context!);
    }
  }

  sendNewUser() async {
    try {
      final response = await repository.signUp(
          email: emailController.text, password: passwordController.text);

      if (response == "Signed up") {
        Get.offAllNamed(AppRoutes.loginPage, arguments: true);
      } else {
        showDialogGeneral(
            title: 'Atenção',
            message: 'Algo errado no cadastro, tente de novo mais tarde',
            context: Get.context!);
      }
    } catch (e) {
      loggerError(message: e.toString());
    }
  }

  showDialogGeneral(
      {required String title,
      required String message,
      required BuildContext context}) {
    showDialog(
        context: context,
        builder: (context) => DialogGeneral(title: title, message: message));
  }

  bool verificaSenha(String texto) {
    if (texto.length < 8) {
      return false;
    }

    bool temLetra = false;
    bool temNumero = false;
    bool temSimbolo = false;

    for (int i = 0; i < texto.length; i++) {
      var char = texto[i];
      if (char.toLowerCase() != char.toUpperCase()) {
        temLetra = true;
      }
      if (int.tryParse(char) != null) {
        temNumero = true;
      }
      if (!char.trim().isEmpty &&
          char.toLowerCase() == char.toUpperCase() &&
          !char.contains(RegExp(r'[0-9]'))) {
        temSimbolo = true;
      }
    }

    return temLetra && temNumero && temSimbolo;
  }
}
