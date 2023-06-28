import 'package:genone_web_flutter/data/providers/services/auth_service.dart';
import 'package:genone_web_flutter/utils/app_constant.dart';

class LoginRepository {

  AuthService _authService = AuthService();

  Future signIn({required String email, required String password}) => _authService.signIn(email: email, password: password);
}