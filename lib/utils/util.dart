import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

mixin AppUtil {
  final _logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: true // Should each log print contain a timestamp
    ),
  );

  loggerVerbose({required dynamic message}) {
    _logger.v(message);
  }

  loggerDebug({required dynamic message}) {
    _logger.d(message);
  }

  loggerInfo({required dynamic message}) {
    _logger.i(message);
  }

  loggerWarning({required dynamic message}) {
    _logger.w(message);
  }

  loggerError({required dynamic message}) {
    _logger.e(message);
  }

  loggerwtf({required dynamic message}) {
    _logger.wtf(message);
  }

  MaskTextInputFormatter maskCpf = MaskTextInputFormatter(mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskCnpj = MaskTextInputFormatter(mask: "##.###.###/####-##", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskPhone = MaskTextInputFormatter(mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskCep = MaskTextInputFormatter(mask: "#####-###", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskDate = MaskTextInputFormatter(mask: "##/##/####", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskHour = MaskTextInputFormatter(mask: "##:##", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskMoney = MaskTextInputFormatter(mask: "###.###.###,##", filter: {"#": RegExp(r'[0-9]')});
  MaskTextInputFormatter maskMail = MaskTextInputFormatter(mask: "####################", filter: {"#": RegExp(r'[a-zA-Z0-9@.]')});


  showRawSnackbar({required String title, required String message}) {
    Get.rawSnackbar(
        title: title,
        message: message,
        icon: const Icon(
          Icons.warning_amber_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        borderRadius: 10.0,
        margin: EdgeInsets.all(20.0),
        snackPosition: SnackPosition.BOTTOM);
  }

  bool isEmailValid(String email) {
    // Expressão regular para validar um endereço de email
    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

}