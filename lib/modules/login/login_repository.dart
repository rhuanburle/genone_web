import 'package:genone_web_flutter/data/providers/services/auth_service.dart';

class LoginRepository {

  AuthService authService = AuthService();

  Future signIn({required String email, required String password}) => authService.signIn(email: email, password: password);

}