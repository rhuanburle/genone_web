import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/email_contact.dart';
import 'package:genone_web_flutter/utils/util.dart';

class ServiceSendEmail with ChangeNotifier, AppUtil {

  final dio = Dio();
  String url = "localhost:8080/email/sendContactEmail";

  sendContactEmail({required EmailContact emailContact}) async {
    final response = await dio.post(url, data: {
      "name": emailContact.name,
      "email": emailContact.email,
      "phone": emailContact.phone,
      "subject": emailContact.subject,
      "message": emailContact.message,
      "dateCreate": emailContact.dateCreate.toString(),
    });
    // try {
    //   final response = await dio.post(url, data: {
    //     "name": emailContact.name,
    //     "email": emailContact.email,
    //     "phone": emailContact.phone,
    //     "subject": emailContact.subject,
    //     "message": emailContact.message,
    //     "dateCreate": emailContact.dateCreate.toString(),
    //   });
    //   if (response.statusCode == 200) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // } catch (e) {
    //   loggerError(message: e);
    //   return false;
    // }
  }
}