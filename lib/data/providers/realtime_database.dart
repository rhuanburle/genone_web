import 'package:dio/dio.dart';

class RealtimeDatabase {

  Dio dio = new Dio();
  final String _baseUrl = 'https://genone-c0ddb-default-rtdb.firebaseio.com/';

  create(String path, Map<String, dynamic> data) async {
    try {
      final response = await dio.post(_baseUrl + path, data: data);
      return response.data;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  update(String path, Map<String, dynamic> data) async {
    try {
      final response = await dio.put(_baseUrl + path, data: data);
      return response.data;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  delete(String path) async {
    try {
      final response = await dio.delete(_baseUrl + path);
      return response.data;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }

  get(String path) async {
    try {
      final response = await dio.get(_baseUrl + path);
      return response.data;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}