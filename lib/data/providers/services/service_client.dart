import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genone_web_flutter/data/model/user_register.dart';
import 'package:genone_web_flutter/utils/util.dart';
import 'package:dio/dio.dart';

class ServiceClient with ChangeNotifier, AppUtil{
  final dio = Dio();
  String url = "localhost:8080/client/";
  
  signIn({required String email, required String password}) async {
    try{
      final response = await dio.post(url, data: {"email": email, "password": password});
      return response.data;
    } catch (e) {
      loggerError(message: e.toString());
    }
  }
  
  signUp(UserRegister userRegister) async {
    try{
      final data = userRegister.toJson();
      print(jsonEncode(data));
      final response = await dio.post('${url}create' , data: userRegister.toJson());
      return response.data;
    } catch (e) {
      loggerError(message: e.toString());
    }
  }

}