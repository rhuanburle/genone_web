import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/email_contact.dart';
import 'package:genone_web_flutter/utils/util.dart';

class ServiceSendEmail with ChangeNotifier, AppUtil {

  final dio = Dio();
  String url = "HTTP://localhost:8080/email/sendContactEmail";

  sendContactEmail({required EmailContact emailContact}) async {
    try {

      final data = emailContact.toJson();

      final response = await dio.post(url, data: data);

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      loggerError(message: e);
      return false;
    }
  }
}