import 'dart:async';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/global_widgets/dialog_general.dart';
import 'package:genone_web_flutter/modules/home/home_repository.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class HomeController extends GetxController with AppUtil {
  var timer;
  RxInt clientBannerCount = 1.obs;

  final repository = Get.find<HomeRepository>();

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

  sendEmail(context) async {
    try {
      if (isEmailValid(emailController.text)) {
        EmailContact emailContact = EmailContact(
            name: nameController.text,
            email: emailController.text,
            phone: phoneController.text,
            subject: subjectController.text,
            message: messageController.text);

        bool isSendOk = await repository.sendEmalContact(emailContact: emailContact.toJson());

        showInfoDialog(isSendOk: isSendOk, context: context);
      } else {
        showDialog(
          context: context,
          builder: (context) => const DialogGeneral(
            title: 'Atenção',
            message: 'Email inválido',
          ),
        );
      }
    } catch (e) {
      loggerError(message: e);
    }
  }

  showInfoDialog({required bool isSendOk, required context}) {
    if (isSendOk) {
      showDialog(
        context: context,
        builder: (context) => const DialogGeneral(
          title: 'Sucesso',
          message: 'Email enviado com sucesso',
        ),
      );
      emailController.text = '';
      nameController.text = '';
      phoneController.text = '';
      subjectController.text = '';
      messageController.text = '';
    } else {
      showDialog(
        context: context,
        builder: (context) => const DialogGeneral(
          title: 'Atenção',
          message: 'Erro ao enviar email',
        ),
      );
    }
  }
}

class EmailContact {
  String name;
  String email;
  String phone;
  String subject;
  String message;

  EmailContact(
      {required this.name,
      required this.email,
      required this.phone,
      required this.subject,
      required this.message});

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'subject': subject,
        'message': message,
      };
}
