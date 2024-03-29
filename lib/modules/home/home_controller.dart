import 'dart:async';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/email_contact.dart';
import 'package:genone_web_flutter/data/repository/repository_api.dart';
import 'package:genone_web_flutter/global_widgets/dialog_general.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController with AppUtil {

  var timer;
  RxInt clientBannerCount = 1.obs;

  TextEditingController messageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  final repositoryApi = Get.find<RepositoryApi>();

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

  RxBool isSendEmailLoading = false.obs;
  sendEmail(context) async {
    try {
      isSendEmailLoading.value = true;
      if (isEmailValid(emailController.text)) {
        String dateNow = DateFormat('yyyy-MM-dd').format(DateTime.now());
        EmailContact emailContact = EmailContact(
            name: nameController.text,
            email: emailController.text,
            phone: phoneController.text,
            subject: subjectController.text,
            message: messageController.text,
            dateCreate: dateNow);
        bool isSendOk = await repositoryApi.sendContactEmail(emailContact: emailContact);

        showInfoDialog(isSendOk: isSendOk, context: context);
      } else {
        isSendEmailLoading.value = false;
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
      isSendEmailLoading.value = false;
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
      isSendEmailLoading.value = false;
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


