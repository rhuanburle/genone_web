import 'package:dio/dio.dart';
import 'package:genone_web_flutter/utils/util.dart';

class RealtimeDatabase with AppUtil{

  Dio dio = new Dio();
  final String _baseUrl = 'https://genone-c0ddb-default-rtdb.firebaseio.com/';

  create(String path, Map<String, dynamic> data) async {
    try {
      final response = await dio.post("$_baseUrl$path.json", data: data);
      loggerInfo(message: "Create Realtimedatabase: ${response.data}");
      if(response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } on DioError catch (e) {
      loggerError(message:e);
      return false;
    }
  }

  update(String path, Map<String, dynamic> data) async {
    try {
      final response = await dio.put("$_baseUrl$path.json", data: data);
      loggerInfo(message: "Update Realtimedatabase: ${response.data}");
      return response.data;
    } on DioError catch (e) {
      loggerError(message:e);
      return null;
    }
  }

  delete(String path) async {
    try {
      final response = await dio.delete("$_baseUrl$path.json");
      loggerInfo(message: "delete Realtimedatabase: ${response.data}");
      return response.data;
    } on DioError catch (e) {
      loggerError(message:e);
      return null;
    }
  }

  get({required userId, required String path}) async {
    try {
      final response = await dio.get("$_baseUrl$path$userId.json");
      loggerInfo(message: "Get Realtimedatabase: ${response.data}");
      return response.data;
    } on DioError catch (e) {
      loggerError(message:e);
      return null;
    }
  }
}